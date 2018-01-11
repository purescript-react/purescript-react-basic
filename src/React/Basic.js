"use strict";

var React = require("react");

exports.react_ = function(spec) {
  return React.createClass({
    getInitialState: function() {
      return spec.initialState(this.props);
    },
    render: function() {
      var this_ = this;
      return spec.render(this.props, this.state, function(newState) {
        return function() {
          this_.setState(newState);
        };
      });
    }
  });
};

exports.reactStatefulComponent_ = function(spec) {
  return React.createClass({
    getInitialState: function() {
      return spec.initialState(this.props);
    },
    componentWillReceiveProps: function(nextProps) {
      var newState = spec.receiveProps(this.nextProps, this.state);
      if (newState !== this.state) {
        this.setState(newState);
      }
    },
    render: function() {
      var this_ = this;
      function send(action) {
        return function() {
          spec.reducer(action, this_.state, send, function(newState) {
            return function() {
              this_.setState(newState);
            };
          });
        };
      }
      return spec.render(this.props, this.state, send);
    }
  });
};
