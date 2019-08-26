"use strict";

var ReactDOM = require("react-dom");

exports.render_ = function(jsx, node, callback) {
  ReactDOM.render(jsx, node, callback);
};

exports.hydrate_ = function(jsx, node, callback) {
  ReactDOM.hydrate(jsx, node, callback);
};

exports.unmountComponentAtNode_ = function(node) {
  return ReactDOM.unmountComponentAtNode(node);
};

exports.findDOMNode_ = function(instance) {
  return ReactDOM.findDOMNode(instance);
};

exports.createPortal_ = function(jsx, node) {
  return ReactDOM.createPortal(jsx, node);
};
