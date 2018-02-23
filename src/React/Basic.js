"use strict";

var React = require("react");
var KeyedContainer = React.Fragment || "div";

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
  return React.createElement.apply(null, [el, attrs].concat(attrs.children));
};

exports.keyed = function(keyChildPairs) {
  return React.createElement(KeyedContainer, {
    children: keyChildPairs.map(function(keyChildPair) {
      return React.cloneElement(keyChildPair.child, { key: keyChildPair.key });
    })
  });
};
