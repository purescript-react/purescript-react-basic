"use strict";

var React = require("react");
var ReactDOM = require("react-dom");
var Container = require("./output/bundle.js");

ReactDOM.render(
  React.createElement(Container.component, { label: 'Increment' }),
  document.getElementById("container")
);
