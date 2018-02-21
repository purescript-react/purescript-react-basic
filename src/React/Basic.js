"use strict";

var React = require('react');

exports.react_ = function(spec) {
  return React.createClass({
    getInitialState: function() {
      return spec.initialState;
    },
    componentDidMount: function() {
      var this_ = this;
      spec.receiveProps(this.props, this.state, function(newState) {
        return function() {
          this_.setState(newState);
        };
      });
    },
    componentWillReceiveProps: function(newProps) {
      var this_ = this;
      spec.receiveProps(newProps, this.state, function(newState) {
        return function() {
          this_.setState(newState);
        };
      });
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

exports.component_ = function(component, props) {
  return React.createElement(component, props);
}
