import fs from "fs";
import loader from "@assemblyscript/loader";
import express from 'express'
const app = express()
const port = 3000

const actions = []

fs.readdirSync('modules').forEach(file => {
  const imports = { /* imports go here */ };
  const wasmModule = loader.instantiateSync(fs.readFileSync('modules/'+file), imports);
  actions.push(wasmModule.exports.action);
  console.log(file);
});

fs.watch('modules', function (event, filename) {
  console.log('New Module Added');
  if (filename) {
    const imports = { /* imports go here */ };
    const wasmModule = loader.instantiateSync(fs.readFileSync('modules/'+filename), imports);
    actions.push(wasmModule.exports.action);
    console.log(filename);
  } else {
      console.log('filename not provided');
  }
});

app.get('/', (req, res) => {
  let arr=[]
  actions.forEach(action => {
    console.log(action(3,2))
    arr.push(action(3,2))
  });
  res.end(JSON.stringify(arr));
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
