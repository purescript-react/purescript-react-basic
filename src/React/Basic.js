"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.component_ = function(spec) {
  function Component(props) {
    this.state = spec.initialState;
    return this;
  }
  Component.prototype = Object.create(React.Component.prototype);

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

exports.createElementKeyed_ = React.createElement(el, attrs);

exports.fragment = function(children) {
  return React.createElement.apply(null, [Fragment, {}].concat(children));
};

exports.fragmentKeyed_ = function(key, children) {
  return React.createElement.apply(
    null,
    [Fragment, { key: key }].concat(children)
  );
};
