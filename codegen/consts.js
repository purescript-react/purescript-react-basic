module.exports.props = require("react-html-attributes");
module.exports.voids = ["area", "base", "br", "col", "embed", "hr", "img", "input", "link", "meta", "param", "source", "track", "wbr"];
// The types for certain attributes differ according to their containing element.
// These appear in the typesByElement object, using "*" as a default element
// (required only if the default attribute type is other than `String`).
// For clarity, it is an error for any attribute to be in both `types` and `typesByElement`.
module.exports.typesByElement = {
  "cols": {
    "textarea": "Int",
  },
  "max": {
    "meter": "Number",
    "progress": "Number"
  },
  "min": {
    "meter": "Number"
  },
  "rows": {
    "textarea": "Int"
  },
  "size" : {
    "input": "Int",
    "select": "Int"
  }
};
module.exports.types = {
  "allowFullScreen": "Boolean",
  "allowTransparency": "Boolean",
  "async": "Boolean",
  "autoComplete": "Boolean",
  "autoFocus": "Boolean",
  "autoPlay": "Boolean",
  "capture": "Boolean",
  "checked": "Boolean",
  "children": "Array JSX",
  "colSpan": "Int",
  "contentEditable": "Boolean",
  "controls": "Boolean",
  "dangerouslySetInnerHTML": "{ __html :: String }",
  "default": "Boolean",
  "defer": "Boolean",
  "disabled": "Boolean",
  "draggable": "Boolean",
  "formNoValidate": "Boolean",
  "hidden": "Boolean",
  "itemScope": "Boolean",
  "loop": "Boolean",
  "maxLength": "Int",
  "minLength": "Int",
  "multiple": "Boolean",
  "muted": "Boolean",
  "noValidate": "Boolean",
  "onBlur": "EventHandler",
  "onChange": "EventHandler",
  "onClick": "EventHandler",
  "onFocus": "EventHandler",
  "onInput": "EventHandler",
  "onInvalid": "EventHandler",
  "onKeyDown": "EventHandler",
  "onKeyPress": "EventHandler",
  "onKeyUp": "EventHandler",
  "onSubmit": "EventHandler",
  "open": "Boolean",
  "playsInline": "Boolean",
  "readOnly": "Boolean",
  "required": "Boolean",
  "reversed": "Boolean",
  "rowSpan": "Int",
  "scoped": "Boolean",
  "seamless": "Boolean",
  "selected": "Boolean",
  "span": "Int",
  "spellCheck": "Boolean",
  "srcDoc": "JSX",
  "start": "Int",
  "suppressContentEditableWarning": "Boolean",
  "tabIndex": "Int",
  "unselectable": "Boolean"
};
module.exports.reserved = ["module", "data", "type", "newtype", "class", "instance", "where", "derive", "if", "then", "else", "case", "of"];
