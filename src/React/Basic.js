import React from "react";
const createElement = React.createElement;
const Fragment = React.Fragment;

export const empty = null;

export function keyed(key) {
  return (child) =>
    createElement(Fragment, { key: key }, child);
}

export function element(component) {
  return (props) =>
    Array.isArray(props.children)
      ? createElement.apply(null, [component, props].concat(props.children))
      : createElement(component, props);
}

export function elementKeyed(component) {
  return (props) =>
    createElement(component, props);
}

export function fragment(children) {
  return createElement.apply(null, [Fragment, null].concat(children));
}

export function createContext(defaultValue) {
  return () =>
    React.createContext(defaultValue);
}

export function contextProvider(context) {
  return context.Provider;
}

export function contextConsumer(context) {
  return context.Consumer;
}
