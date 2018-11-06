"use strict";

var React = require("react");

var LogLifecycles = function(_props) {
  return this;
};

LogLifecycles.prototype = Object.create(React.Component.prototype);

LogLifecycles.displayName = "LogLifecycles";

LogLifecycles.prototype.componentDidMount = function() {
  console.info(
    this.props.child.type.displayName || this.props.child.type,
    "[didMount]"
  );
};

LogLifecycles.prototype.componentDidUpdate = function() {
  console.info(
    this.props.child.type.displayName || this.props.child.type,
    "[didUpdate]"
  );
};

LogLifecycles.prototype.componentWillUnmount = function() {
  console.info(
    this.props.child.type.displayName || this.props.child.type,
    "[willUnmount]"
  );
};

LogLifecycles.prototype.render = function() {
  return this.props.child;
};

exports.logLifecycles_ = LogLifecycles;
