"use strict";

var React = require("react");
var Fragment = React.Fragment || "div";

exports.createComponent = (function() {
  // Begin component prototype functions
  // (`this`-dependent, defined outside `createComponent`
  // for a slight performance boost)
  function toSelf() {
    var instance = this;
    var setStateThen = function(update) {
      return function(effects) {
        return function() {
          instance.setState(function(state) {
            return { $$state: update(state.$$state) };
          }, effects);
        };
      };
    };
    var self = {
      props: instance.props.$$props,
      state: instance.state === null ? null : instance.state.$$state,
      setState: function(update) {
        return setStateThen(update)(undefined);
      },
      setStateThen: setStateThen,
      instance_: instance
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

exports.empty = null;

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
