"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

// Class polyfill
var __extends =
  (this && this.__extends) ||
  (function() {
    var extendStatics =
      Object.setPrototypeOf ||
      ({ __proto__: [] } instanceof Array &&
        function(d, b) {
          d.__proto__ = b;
        }) ||
      function(d, b) {
        for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
      };
    return function(d, b) {
      extendStatics(d, b);
      function __() {
        this.constructor = d;
      }
      d.prototype =
        b === null
          ? Object.create(b)
          : ((__.prototype = b.prototype), new __());
    };
  })();

var __shallowCopy = function(obj) {
  if (obj == null) return;
  var result = {};
  Object.keys(obj).forEach(function(key) {
    result[key] = obj[key];
  });
  return result;
};

exports.component_ = function(spec) {
  function Component(props) {
    this.state = spec.initialState;
    return this;
  }
  __extends(Component, React.Component);

  Component.prototype.displayName = spec.displayName;

  Component.prototype.componentDidMount = function() {
    var this_ = this;
    spec.receiveProps(this.props, this.state, function(newState) {
      return function() {
        this_.setState(newState);
      };
    });
  };

  Component.prototype.componentWillReceiveProps = function(newProps) {
    var this_ = this;
    spec.receiveProps(newProps, this.state, function(newState) {
      return function() {
        this_.setState(newState);
      };
    });
  };

  Component.prototype.render = function() {
    var this_ = this;
    return spec.render(this.props, this.state, function(newState) {
      return function() {
        this_.setState(newState);
      };
    });
  };

  return Component;
};

exports.createElement_ = function(el, attrs) {
  return React.createElement.apply(
    null,
    [el, attrs].concat((attrs && attrs.children) || [])
  );
};

exports.createElementKeyed_ = function(el, key, attrs) {
  var attrsClone = __shallowCopy(attrs) || {};
  attrsClone.key = key;
  return React.createElement(el, attrsClone);
};

exports.fragment = function(children) {
  return React.createElement.apply(null, [Fragment, {}].concat(children));
};

exports.fragmentKeyed_ = function(key, children) {
  return React.createElement.apply(
    null,
    [Fragment, { key: key }].concat(children)
  );
};
