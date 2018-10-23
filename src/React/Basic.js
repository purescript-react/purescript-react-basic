"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.readProps = function(self) {
  return self.instance_.props.$$props;
};

exports.readState = function(self) {
  var state = self.instance_.state;
  return state === null ? null : state.$$state;
};

exports.send_ = function(buildStateUpdate) {
  return function(self, action) {
    if (!self.instance_.$$mounted) {
      exports.warningUnmountedComponentAction(self, action);
      return;
    }
    var sideEffects = null;
    self.instance_.setState(
      function(s) {
        var setStateContext = self.instance_.toSelf();
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
          sideEffects(this.toSelf())();
        }
      }
    );
  };
};

exports.createComponent_ = function(defaultUpdate) {
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
  var defaultRender = function() {
    return false;
  };

  // Begin component prototype functions
  // (`this`-dependent, defined outside `createComponent`
  // for a slight performance boost)
  function toSelf() {
    var self = {
      props: this.props.$$props,
      state: this.state === null ? null : this.state.$$state,
      instance_: this
    };
    return self;
  }

  function shouldComponentUpdate(nextProps, nextState) {
    var shouldUpdate = this.$$spec.shouldUpdate;
    return shouldUpdate === defaultShouldUpdate
      ? true
      : shouldUpdate(this.toSelf())(nextProps.$$props)(
          nextState === null ? null : nextState.$$state
        );
  }

  function componentDidMount() {
    var didMount = this.$$spec.didMount;
    if (didMount !== defaultDidMount) {
      this.$$spec.didMount(this.toSelf())();
    }
  }

  function componentDidUpdate() {
    var didUpdate = this.$$spec.didUpdate;
    if (didUpdate !== defaultDidUpdate) {
      didUpdate(this.toSelf())();
    }
  }

  function componentWillUnmount() {
    this.$$mounted = false;
    var willUnmount = this.$$spec.willUnmount;
    if (willUnmount !== defaultWillUnmount) {
      willUnmount(this.toSelf())();
    }
  }

  function render() {
    return this.$$spec.render(this.toSelf());
  }
  // End component prototype functions

  return function(displayName) {
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

    Component.displayName = displayName;
    Component.prototype = Object.create(React.Component.prototype);
    Component.prototype.toSelf = toSelf;
    Component.prototype.shouldComponentUpdate = shouldComponentUpdate;
    Component.prototype.componentDidMount = componentDidMount;
    Component.prototype.componentDidUpdate = componentDidUpdate;
    Component.prototype.componentWillUnmount = componentWillUnmount;
    Component.prototype.render = render;

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

exports.displayNameFromComponentSpec = function($$spec) {
  return $$spec.$$type.displayName || "[unknown]";
};

exports.displayNameFromSelf = function(self) {
  return exports.displayNameFromComponentSpec(self.instance_.$$spec);
};

exports.toReactComponent_ = function(fromJSProps, $$spec) {
  var Component = function constructor() {
    return this;
  };

  Component.prototype = Object.create(React.Component.prototype);

  Component.displayName = $$spec.$$type.displayName + " (Wrapper)";

  Component.prototype.render = function() {
    var props = {
      $$props: fromJSProps(this.props),
      $$spec: $$spec
    };
    return React.createElement($$spec.$$type, props);
  };

  return Component;
};

exports.warningDefaultUpdate = function(self, action) {
  console.error(
    "A " +
      exports.displayNameFromSelf(self) +
      " component received an action but has no `update` function defined. Override the default `update` function to handle this action."
  );
  console.error("Self:", self);
  console.error("Action:", action);
};

exports.warningUnmountedComponentAction = function(self, action) {
  console.error(
    "An unmounted " +
      exports.displayNameFromSelf(self) +
      " component received the action below. Actions received by unmounted components usually indicate a memory leak. Make sure to unsubscribe from any async work in `willUnmount`."
  );
  console.error("Self:", self);
  console.error("Action:", action);
};

exports.warningFailedAsyncAction = function(self, error) {
  console.error(
    "An async action failed in a " +
      exports.displayNameFromSelf(self) +
      " component."
  );
  console.error(error);
};
