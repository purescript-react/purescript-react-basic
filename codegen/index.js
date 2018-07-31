const { props, voids, types, reserved } = require('./consts');

const printRecord = (elProps) => elProps.length ? `
  ( ${ elProps.map((p) =>
       `${p} :: ${types[p] || "String"}`).join("\n  , ")
     }
  )` : "()"

props.elements.html
  .map((e) => {
    const noChildren = voids.includes(e);
    const symbol = reserved.includes(e) ? `${e}'` : e;
    return `
    type Props_${e} =${printRecord(
      (noChildren ? [] : ["children"]).concat(props[e] || []).sort()
    )}

    ${symbol}
      :: forall attrs attrs_
       . Union attrs attrs_ (SharedProps Props_${e})
      => Record attrs
      -> JSX
    ${symbol} = createElement (unsafeCreateDOMComponent "${e}")${
      noChildren ? "" : `

    ${e}_ :: Array JSX -> JSX
    ${e}_ children = ${symbol} { children }`
    }
`;
}).forEach((x) => console.log(x.replace(/^\n\ {4}/, "").replace(/\n\ {4}/g, "\n")))
