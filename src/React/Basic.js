"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.component_ = function(spec) {
  var Component = function constructor(props) {
    this.state = spec.initialState;
    this._setState = this.setState.bind(this);
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = spec.displayName;

  Component.prototype.componentDidMount = function componentDidMount() {
    spec.receiveProps({
      isFirstMount: true,
      props: this.props,
      state: this.state,
      setState: this._setState,
      setStateThen: this._setState,
      instance_: this,
    });
  };

  Component.prototype.componentWillReceiveProps = function componentWillReceiveProps(
    newProps
  ) {
    spec.receiveProps({
      isFirstMount: false,
      props: newProps,
      state: this.state,
      setState: this._setState,
      setStateThen: this._setState,
      instance_: this,
    });
  };

  Component.prototype.render = function render() {
    return spec.render({
      props: this.props,
      state: this.state,
      setState: this._setState,
      setStateThen: this._setState,
      instance_: this,
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
