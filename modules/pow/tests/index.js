const assert = require("assert");
const myModule = require("..");
assert.equal(myModule.action(1, 2), 3);
console.log("ok");
