"use strict";

var React = require("react");
var ReactDOM = require("react-dom");
var Counter = require("./output/bundle.js");

ReactDOM.render(
  React.createElement(Counter.counter, { label: 'Increment' }),
  document.getElementById("container")
);
