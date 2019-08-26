"use strict";

exports.mergeStyles = function(styles) {
  return Object.assign.apply(null, [ {} ].concat(styles));
};
