"use strict";

var React = require("react");
React.createClass = require("create-react-class");
var ReactDOM = require("react-dom");
var RC = require("./ReducerComponent.purs");

ReactDOM.render(
  React.createElement(RC.counter, {}),
  document.getElementById("app")
);
