"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.voidState = {};

exports.createComponent = function(displayName) {
  function contextToSelf(instance) {
    var self = {
      props: instance.props.$$props,
      state: instance.state === undefined ? undefined : instance.state.$$state,
      readProps: function() {
        return self.instance_.props.$$props;
      },
      readState: function() {
        var state = self.instance_.state;
        return state !== undefined && state.$$state;
      },
      send: function(action) {
        return function() {
          var updates = self.instance_.$$spec.buildStateUpdate(
            self.instance_.$$spec.update(self)(action)
          );
          if (updates.state !== null) {
            self.instance_.setState(
              { $$state: updates.state },
              updates.effects !== null
                ? function() {
                    updates.effects(contextToSelf(this));
                  }
                : undefined
            );
          } else if (updates.effects !== null) {
            updates.effects(self);
          }
        };
      },
      instance_: instance
    };
    return self;
  }

  var Component = function constructor(props) {
    this.$$spec = props.$$spec;
    this.state =
      // React may optimize components with no state,
      // so we leave state undefined if it was initialized
      // as Void.
      this.$$spec.initialState === exports.voidState
        ? undefined
        : { $$state: this.$$spec.initialState };
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = displayName;

  Component.prototype.shouldComponentUpdate = function shouldComponentUpdate(
    nextProps,
    nextState
  ) {
    return (
      !this.$$spec.eqProps(this.props.$$props)(nextProps.$$props) ||
      (this.state !== undefined &&
        !this.$$spec.eqState(this.state.$$state)(nextState.$$state))
    );
  };

  Component.prototype.render = function render() {
    return this.$$spec.render(contextToSelf(this));
  };

  return Component;
};

exports.make_ = function(
  buildStateUpdate,
  eqProps,
  eqState,
  component,
  initialState,
  update,
  render,
  $$props
) {
  var props = {
    $$props: $$props,
    $$spec: {
      buildStateUpdate: buildStateUpdate,
      eqProps: eqProps,
      eqState: eqState,
      initialState: initialState,
      update: update,
      render: render
    }
  };
  return React.createElement.apply(
    null,
    [component, props].concat(($$props && $$props.children) || null)
  );
};

exports.keyed_ = function(key, child) {
  return React.createElement(Fragment, { key: key }, child);
};

exports.element_ = function(component, props) {
  return React.createElement.apply(
    null,
    [component, props].concat((props && props.children) || null)
  );
};

exports.elementKeyed_ = function(key, child) {
  return React.createElement.call(null, Fragment, { key: key }, child);
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
