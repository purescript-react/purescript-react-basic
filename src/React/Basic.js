"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.createComponent_ = function(noUpdate, buildStateUpdate, displayName) {
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
          var updates = buildStateUpdate(
            self.instance_.$$spec.update(self)(action)
          );
          if (updates.state !== null) {
            self.instance_.setState(
              { $$state: updates.state },
              updates.effects !== null
                ? function() {
                    updates.effects(contextToSelf(this))();
                  }
                : undefined
            );
          } else if (updates.effects !== null) {
            updates.effects(self)();
          }
        };
      },
      instance_: instance
    };
    return self;
  }

  var defaultInitialState = {};
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
    this.$$spec = props.$$spec;
    this.state =
      // React may optimize components with no state,
      // so we leave state undefined if it was left as
      // the default value.
      this.$$spec.initialState === defaultInitialState
        ? undefined
        : { $$state: this.$$spec.initialState };
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = displayName;

  Component.prototype.shouldComponentUpdate = function(nextProps, nextState) {
    return this.$$spec.shouldUpdate(contextToSelf(this))(nextProps)(nextState);
  };

  Component.prototype.componentDidMount = function() {
    return this.$$spec.didMount(contextToSelf(this))();
  };

  Component.prototype.componentDidUpdate = function() {
    return this.$$spec.didUpdate(contextToSelf(this))();
  };

  Component.prototype.componentWillUnmount = function() {
    return this.$$spec.willUnmount(contextToSelf(this))();
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

exports.createStatelessComponent = function(displayName) {
  var defaultInitialState = {};
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
    this.$$spec = props.$$spec;
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = displayName;

  Component.prototype.render = function() {
    return this.$$spec.render(this.props.$$props);
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

exports.make = function(component) {
  return function($$props) {
    var props = {
      $$props: $$props,
      $$spec: component
    };
    return React.createElement(component.$$type, props);
  };
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
