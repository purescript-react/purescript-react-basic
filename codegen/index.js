const props = require('react-html-attributes');
const voids = ['area', 'base', 'br', 'col', 'embed', 'hr', 'img', 'input', 'link', 'meta', 'param', 'source', 'track', 'wbr'];
const types = {
  "allowFullScreen": "Boolean",
  "async": "Boolean",
  "autoPlay": "Boolean",
  "capture": "Boolean",
  "checked": "Boolean",
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
  "start": "Number",
  "zoomAndPan": "String"
};

printRecord = (elProps) => `
  ( ${ elProps.map((p) =>
       `${p} :: ${types[p] || 'String'}`).join('\n  , ')
     }
  )`

props.elements.html
  .map((e) =>`
    type Props_${e} = ${
      props[e]
        ? printRecord(props[e])
        : '()'
    }

    ${e}
      :: forall attrs attrs_
       . Union attrs attrs_ (SharedProps Props_${e}))
      => Record attrs
      -> Array JSX
      -> JSX
    ${e} = ${voids.indexOf(e) >= 0 ? 'createElementNoChildren' : 'createElement'} "${e}"
`).forEach((x) => console.log(x.replace(/^\n\ {4}/, '').replace(/\n\ {4}/g, '\n')))
