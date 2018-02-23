const props = require("react-html-attributes");
const voids = ["area", "base", "br", "col", "embed", "hr", "img", "input", "link", "meta", "param", "source", "track", "wbr"];
const types = {
  "allowFullScreen": "Boolean",
  "async": "Boolean",
  "autoPlay": "Boolean",
  "capture": "Boolean",
  "checked": "Boolean",
  "children": "Array JSX",
  "cols": "Number",
  "controls": "Boolean",
  "default": "Boolean",
  "defer": "Boolean",
  "disabled": "Boolean",
  "formNoValidate": "Boolean",
  "hidden": "Boolean",
  "itemScope": "Boolean",
  "loop": "Boolean",
  "multiple": "Boolean",
  "muted": "Boolean",
  "noValidate": "Boolean",
  "open": "Boolean",
  "playsInline": "Boolean",
  "readOnly": "Boolean",
  "required": "Boolean",
  "reversed": "Boolean",
  "rowSpan": "Number",
  "rows": "Number",
  "scoped": "Boolean",
  "seamless": "Boolean",
  "selected": "Boolean",
  "size": "Number",
  "span": "Number",
  "start": "Number"
};
const reserved = ["module", "data", "type", "newtype", "class", "instance", "where", "derive", "if", "then", "else", "case", "of"];

printRecord = (elProps) => elProps.length ? `
  ( ${ elProps.map((p) =>
       `${p} :: ${types[p] || "String"}`).join("\n  , ")
     }
  )` : "()"

props.elements.html
  .map((e) => `
    type Props_${e} = ${printRecord(
      (voids.includes(e) ? [] : ["children"]).concat(props[e] || []).sort()
    )}

    ${reserved.includes(e) ? `${e}_` : e}
      :: forall attrs attrs_
       . Union attrs attrs_ (SharedProps Props_${e})
      => Record attrs
      -> JSX
    ${reserved.includes(e) ? `${e}_` : e} = createElement (unsafeCoerce "${e}")
`).forEach((x) => console.log(x.replace(/^\n\ {4}/, "").replace(/\n\ {4}/g, "\n")))
