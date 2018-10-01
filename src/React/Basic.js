"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

function setStateThen(instance) {
  return function(update, then) {
    return instance.setState(update, function() {
      then(this.state);
    });
  };
}

exports.component_ = function(spec) {
  var Component = function constructor() {
    this.state = spec.initialState;
    this._setState = this.setState.bind(this);
    return this;
  };

  Component.prototype = Object.create(React.PureComponent.prototype);

  Component.displayName = spec.displayName;

  Component.prototype.componentDidMount = function componentDidMount() {
    spec.receiveProps({
      isFirstMount: true,
      props: this.props,
      state: this.state,
      setState: this._setState,
      setStateThen: setStateThen(this),
      instance_: this
    });
  };

  Component.prototype.componentDidUpdate = function componentDidUpdate() {
    spec.receiveProps({
      isFirstMount: false,
      props: this.props,
      state: this.state,
      setState: this._setState,
      setStateThen: setStateThen(this),
      instance_: this
    });
  };

  Component.prototype.render = function render() {
    return spec.render({
      props: this.props,
      state: this.state,
      setState: this._setState,
      setStateThen: setStateThen(this),
      instance_: this
    });
  };

  return Component;
};

exports.element_ = function(el, attrs) {
  return React.createElement.apply(
    null,
    [el, attrs].concat((attrs && attrs.children) || [])
  );
};

exports.elementKeyed_ = exports.element_;

exports.fragment = function(children) {
  return React.createElement.apply(null, [Fragment, {}].concat(children));
};

exports.fragmentKeyed_ = function(key, children) {
  return React.createElement.apply(
    null,
    [Fragment, { key: key }].concat(children)
  );
};
