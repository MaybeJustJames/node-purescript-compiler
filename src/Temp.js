"use strict";

const temp = require('temp');

exports.tempFileName = function(prefix) {
  return function() {
    return temp.path({prefix, suffix: '.js'});
  }
}
