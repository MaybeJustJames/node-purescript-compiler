# node-purescript-compiler

A Node.js interface to the PureScript compiler via Spago.

## Example

Set up:
```shell
mkdir example-project
cd example-project
npm init
spago init
npm install node-purescript-compiler
node
```

Compiling PureScript:
```javascript
const ps = require('node-purescript-compiler');
const js = ps.compile();
console.log(js);
```
