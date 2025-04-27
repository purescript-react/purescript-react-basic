import * as React from "react";

export const empty = null;

export const keyed = (key) => (child) =>
  React.createElement(React.Fragment, { key: key }, child);

export const element = (component) => (props) =>
  Array.isArray(props.children)
    ? React.createElement.apply(null, [component, props].concat(props.children))
    : React.createElement(component, props);

export const elementKeyed = (component) => (props) =>
  React.createElement(component, props);

export const fragment = (children) =>
  React.createElement.apply(null, [React.Fragment, null].concat(children));

export const createContext = (defaultValue) => () =>
  React.createContext(defaultValue);

export const contextProvider = (context) => context.Provider;

export const contextConsumer = (context) => context.Consumer;