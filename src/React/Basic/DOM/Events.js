"use strict";

exports.unsafePreventDefault = function(e) {
  e.preventDefault();
  return e;
};

exports.unsafeIsDefaultPrevented = function(e) {
  e.isDefaultPrevented();
  return e;
};

exports.unsafeStopPropagation = function(e) {
  e.stopPropagation();
  return e;
};

exports.unsafeIsPropagationStopped = function(e) {
  return e.isPropagationStopped();
};
