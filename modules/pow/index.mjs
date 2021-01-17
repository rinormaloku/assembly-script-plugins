import fs from "fs";
import loader from "@assemblyscript/loader";
const imports = { /* imports go here */ };
const wasmModule = loader.instantiateSync(fs.readFileSync("build/optimized.wasm"), imports);

console.debug(wasmModule.exports.add(2, 1))
