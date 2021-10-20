"use strict";

const Compiler = require('./output/Main');

export function compile(source) {
  return Compiler.compile();
}
