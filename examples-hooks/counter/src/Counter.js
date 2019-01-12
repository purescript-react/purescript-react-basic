"use strict";

exports.setDocumentTitle = function(title) {
  return function() {
    document.title = title;
  };
};
