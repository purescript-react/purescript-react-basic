"use strict";

var ReactDOM = require("react-dom");

exports.findDOMNode_ = function(instance) {
  return ReactDOM.findDOMNode(instance);
};

exports.mergeStyles = function(styles) {
  return Object.assign.apply(null, [ {} ].concat(styles));
};
