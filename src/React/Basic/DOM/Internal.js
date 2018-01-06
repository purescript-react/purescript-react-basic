"use strict";

var React = require('react');

exports.createElement_ = function(el, attrs, kids) {
  return React.createElement(el, attrs, kids);
}

exports.createElementNoChildren_ = function(el, attrs) {
  return React.createElement(el, attrs);
}
