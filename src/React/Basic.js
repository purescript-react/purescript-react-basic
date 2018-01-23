"use strict";

var React = require("react");

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

exports.react = function(/* Union typeclass */) {
  return function(spec) {
    function Component(props) {
      if (spec.initialState) {
        this.state = spec.initialState(props);
      }
      return this;
    }
    __extends(Component, React.Component);

    function sendAction(this_) {
      return function(action) {
        return function() {
          if (!spec.hasOwnProperty("reducer")) {
            return;
          }
          var newState = spec.reducer(action)(this_.state)(sendAction(this_));
          this_.setState(newState);
        };
      };
    }

    Component.prototype.render = function() {
      var this_ = this;
      return spec.render(this_.props)(this_.state)(sendAction(this_));
    };

    if (spec.hasOwnProperty("displayName")) {
      Component.prototype.displayName = spec.displayName;
    }

    if (spec.hasOwnProperty("receiveProps")) {
      Component.prototype.componentWillReceiveProps = function(nextProps) {
        var newState = spec.receiveProps(nextProps)(this.state);
        if (newState !== this.state) {
          this.setState(newState);
        }
      };
    }

    if (spec.hasOwnProperty("didMount")) {
      Component.prototype.componentDidMount = function() {
        var action = spec.didMount(this.props)(this.state);
        sendAction(this)(action)();
      };
    }

    if (spec.hasOwnProperty("didUpdate")) {
      Component.prototype.componentDidUpdate = function() {
        var action = spec.didUpdate(this.props)(this.state);
        sendAction(this)(action)();
      };
    }

    return Component;
  };
};
