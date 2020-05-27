"use strict";

const React = require("react");
const createElement = React.createElement;
const Fragment = React.Fragment;

exports.empty = null;

exports.keyed = (key) => (child) =>
  createElement(Fragment, { key: key }, child);

exports.element = (component) => (props) =>
  Array.isArray(props.children)
    ? createElement.apply(null, [component, props].concat(props.children))
    : createElement(component, props);

exports.elementKeyed = (component) => (props) =>
  createElement(component, props);

exports.fragment = (children) =>
  createElement.apply(null, [Fragment, null].concat(children));

exports.createContext = (defaultValue) => () =>
  React.createContext(defaultValue);

exports.contextProvider = (context) => context.Provider;

exports.contextConsumer = (context) => context.Consumer;
