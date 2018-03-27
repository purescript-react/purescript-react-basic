"use strict";

var React = require("react");
var ReactDOM = require("react-dom");
var ControlledInput = require("./output/bundle.js");

ReactDOM.render(
  React.createElement(ControlledInput.component),
  document.getElementById("container")
);
