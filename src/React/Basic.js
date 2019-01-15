"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.createComponent = (function() {
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

  function componentDidMount() {
    var didMount = this.$$spec.didMount;
    if (didMount !== undefined) {
      didMount(this.toSelf())();
    }
  }

  function shouldComponentUpdate(nextProps, nextState) {
    var shouldUpdate = this.$$spec.shouldUpdate;
    return shouldUpdate === undefined
      ? true
      : shouldUpdate(this.toSelf())({
          nextProps: nextProps.$$props,
          nextState: nextState === null ? null : nextState.$$state
        });
  }

  function componentDidUpdate(prevProps, prevState) {
    var didUpdate = this.$$spec.didUpdate;
    if (didUpdate !== undefined) {
      didUpdate(this.toSelf())({
        prevProps: prevProps.$$props,
        prevState: prevState === null ? null : prevState.$$state
      })();
    }
  }

  function componentWillUnmount() {
    this.$$mounted = false;
    var willUnmount = this.$$spec.willUnmount;
    if (willUnmount !== undefined) {
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
        this.$$spec.initialState === undefined
          ? null
          : { $$state: this.$$spec.initialState };
      return this;
    };

    Component.displayName = displayName;
    Component.prototype = Object.create(React.Component.prototype);
    Component.prototype.constructor = Component;
    Component.prototype.toSelf = toSelf;
    Component.prototype.shouldComponentUpdate = shouldComponentUpdate;
    Component.prototype.componentDidMount = componentDidMount;
    Component.prototype.componentDidUpdate = componentDidUpdate;
    Component.prototype.componentWillUnmount = componentWillUnmount;
    Component.prototype.render = render;

    return Component;
  };
})();

exports.send_ = function(buildStateUpdate) {
  return function(self, action) {
    if (!self.instance_.$$mounted) {
      exports.warningUnmountedComponentAction(self, action);
      return;
    }
    if (self.instance_.$$spec.update === undefined) {
      exports.warningDefaultUpdate(self, action);
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

exports.readProps = function(self) {
  return function() {
    return self.instance_.props.$$props;
  };
};

exports.readState = function(self) {
  return function() {
    var state = self.instance_.state;
    return state === null ? null : state.$$state;
  };
};

exports.make = function(_unionDict) {
  return function($$type) {
    return function($$spec) {
      var $$specPadded = {
        initialState: $$spec.initialState,
        update: $$spec.update,
        render: $$spec.render,
        didMount: $$spec.didMount,
        shouldUpdate: $$spec.shouldUpdate,
        didUpdate: $$spec.didUpdate,
        willUnmount: $$spec.willUnmount
      };
      return function($$props) {
        var props = {
          $$props: $$props,
          $$spec: $$specPadded
        };
        return React.createElement($$type, props);
      };
    };
  };
};

exports.fragment = function(children) {
  return React.createElement.apply(null, [Fragment, {}].concat(children));
};

exports.displayNameFromComponent = function($$type) {
  return $$type.displayName || "[unknown]";
};

exports.displayNameFromSelf = function(self) {
  return exports.displayNameFromComponent(self.instance_.constructor);
};

exports.toReactComponent = function(_unionDict) {
  return function(fromJSProps) {
    return function($$type) {
      return function($$spec) {
        var $$specPadded = {
          initialState: $$spec.initialState,
          update: $$spec.update,
          render: $$spec.render,
          didMount: $$spec.didMount,
          shouldUpdate: $$spec.shouldUpdate,
          didUpdate: $$spec.didUpdate,
          willUnmount: $$spec.willUnmount
        };

        var Component = function constructor() {
          return this;
        };

        Component.prototype = Object.create(React.Component.prototype);

        Component.displayName = $$type.displayName + " (Wrapper)";

        Component.prototype.render = function() {
          var props = {
            $$props: fromJSProps(this.props),
            $$spec: $$specPadded
          };
          return React.createElement($$type, props);
        };

        return Component;
      };
    };
  };
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
