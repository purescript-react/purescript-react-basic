"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.createComponent_ = function(
  noUpdate,
  buildStateUpdate,
  handler,
  composeCancelEventFn,
  identityEventFn,
  displayName
) {
  function contextToSelf(instance) {
    var self = {
      props: instance.props.$$props,
      state: instance.state === null ? null : instance.state.$$state,
      readProps: function() {
        return self.instance_.props.$$props;
      },
      readState: function() {
        var state = self.instance_.state;
        return state === null ? null : state.$$state;
      },
      send: function(action) {
        return function() {
          if (!self.instance_.$$mounted) {
            return;
          }
          var sideEffects = null;
          self.instance_.setState(
            function(s) {
              var setStateContext = contextToSelf(self.instance_);
              setStateContext.state = s.$$state;
              var updates = buildStateUpdate(
                self.instance_.$$spec.update(setStateContext)(action)
              );
              if (updates.effects !== null) {
                sideEffects = updates.effects;
              }
              if (updates.state !== null && updates.state !== s.$$state) {
                return { $$state: updates.state };
              } else {
                return null;
              }
            },
            function() {
              if (sideEffects !== null) {
                sideEffects(contextToSelf(this))();
              }
            }
          );
        };
      },
      capture: function(eventFn) {
        return self.monitor(composeCancelEventFn(eventFn));
      },
      capture_: function(action) {
        return self.capture(identityEventFn)(function() {
          return action;
        });
      },
      monitor: function(eventFn) {
        return function(makeAction) {
          return handler(eventFn)(function(event) {
            return self.send(makeAction(event));
          });
        };
      },
      monitor_: function(action) {
        return self.monitor(identityEventFn)(function() {
          return action;
        });
      },
      instance_: instance
    };
    return self;
  }

  var defaultInitialState = null;
  var defaultShouldUpdate = function() {
    return function() {
      return function() {
        return true;
      };
    };
  };
  var defaultDidMount = function() {
    return function() {};
  };
  var defaultDidUpdate = function() {
    return function() {};
  };
  var defaultWillUnmount = function() {
    return function() {};
  };
  var defaultUpdate = function() {
    return function() {
      return noUpdate;
    };
  };
  var defaultRender = function() {
    return false;
  };

  var Component = function constructor(props) {
    this.$$mounted = true;
    this.$$spec = props.$$spec;
    this.state =
      // React may optimize components with no state,
      // so we leave state null if it was left as
      // the default value.
      this.$$spec.initialState === defaultInitialState
        ? null
        : { $$state: this.$$spec.initialState };
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = displayName;

  Component.prototype.shouldComponentUpdate = function(nextProps, nextState) {
    return this.$$spec.shouldUpdate({
      props: this.props.$$props,
      state: this.state === null ? null : this.state.$$state
    })(nextProps.$$props)(nextState === null ? null : nextState.$$state);
  };

  Component.prototype.componentDidMount = function() {
    return this.$$spec.didMount(contextToSelf(this))();
  };

  Component.prototype.componentDidUpdate = function() {
    return this.$$spec.didUpdate(contextToSelf(this))();
  };

  Component.prototype.componentWillUnmount = function() {
    this.$$mounted = false;
    return this.$$spec.willUnmount({
      props: this.props.$$props,
      state: this.state === null ? null : this.state.$$state
    })();
  };

  Component.prototype.render = function() {
    return this.$$spec.render(contextToSelf(this));
  };

  return {
    $$type: Component,
    initialState: defaultInitialState,
    shouldUpdate: defaultShouldUpdate,
    didMount: defaultDidMount,
    didUpdate: defaultDidUpdate,
    willUnmount: defaultWillUnmount,
    update: defaultUpdate,
    render: defaultRender
  };
};

exports.make = function($$spec) {
  return function($$props) {
    var props = {
      $$props: $$props,
      $$spec: $$spec
    };
    return React.createElement($$spec.$$type, props);
  };
};

exports.toReactComponent = function($$spec) {
  var Component = function constructor() {
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = $$spec.$$type.displayName + " (Wrapper)";

  Component.prototype.render = function() {
    var props = {
      $$props: this.props,
      $$spec: $$spec
    };
    return React.createElement($$spec.$$type, props);
  };

  return Component;
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
