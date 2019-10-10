const fs = require("fs");
const { htmlProps, svgProps, voids, types, typesByElement, reserved } = require("./consts");
const changeCase = require('change-case')
const htmlGenFile = "../src/React/Basic/DOM/Generated.purs";
const svgGenFile = "../src/React/Basic/DOM/SVG.purs";

const htmlHeader = `-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.DOM.Generated where

import Data.Nullable (Nullable)
import Foreign.Object (Object)
import Prim.Row (class Union)
import Web.DOM (Node)
import React.Basic (JSX, ReactComponent, Ref, element)
import React.Basic.DOM.Internal (CSS, unsafeCreateDOMComponent)
import React.Basic.Events (EventHandler)

`;

const propType = (e, p) => {
  const elPropTypes = typesByElement[p];
  if (elPropTypes) {
    if (types[p]) {
      throw new TypeError(`${p} appears in both types and typesByElement`);
    }
    return elPropTypes[e] || elPropTypes["*"] || "String";
  } else {
    return types[p] || "String";
  }
}

const svgHeader = `-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.DOM.SVG where

import Data.Nullable (Nullable)
import Foreign.Object (Object)
import Prim.Row (class Union)
import Web.DOM (Node)
import React.Basic (JSX, ReactComponent, Ref, element)
import React.Basic.DOM.Internal (SharedSVGProps, unsafeCreateDOMComponent)

`;

const ignoredSvgPropKeys = [
  '*', 'elements',
  // These are all deprecated according to MDN, and I'm not sure what the
  // React representation should be for the hyphenated ones if they are
  // supported all, so let's exclude them
  "font", "glyph", "hkern", "missing-glyph", "vkern",
  "font-face", "font-face-format", "font-face-name", "font-face-src", "font-face-uri",
  "altGlyph", "altGlyphDef", "altGlyphItem", "glyphRef",
  "tref", "color-profile", "cursor",
]

const camelCaseSvgProps = {}
Object.keys(svgProps).forEach(elName => {
  if (!ignoredSvgPropKeys.includes(elName)) {
    const elAttrs = svgProps[elName].map(changeCase.camelCase);
    // style is already included in SharedSVGProps
    delete elAttrs['style'];
    camelCaseSvgProps[elName] = elAttrs;
  }
});

// The attribute list for <svg> in react-html-attributes
// is wrong (it contains the union of the attributes of all
// svg elements)
delete htmlProps['svg'];

const printRecord = (e, elProps) =>
  elProps.length
    ? `
  ( ${elProps.map(p => `${p} :: ${propType(e, p)}`).join("\n  , ")}
  )`
    : "()";

const reactProps = ["ref", "key", "_data"];

const generatePropTypes = (elements, props, sharedPropType) =>
  elements.map(e => {
    const noChildren = voids.includes(e);
    const symbol = reserved.includes(e) ? `${e}'` : e;

    const propType = sharedPropType ? `(${sharedPropType} Props_${e})` : `Props_${e}`

    return `
    type Props_${e} =${printRecord(e,
      ( noChildren
        ? reactProps
        : reactProps.concat("children")
      )
        .concat(props[e] || [], props["*"] || [])
        .sort()
    )}

    ${symbol}
      :: forall attrs attrs_
       . Union attrs attrs_ ${propType}
      => Record attrs
      -> JSX
    ${symbol} = element ${symbol}'

    ${symbol}'
      :: forall attrs attrs_
       . Union attrs attrs_ ${propType}
      => ReactComponent (Record attrs)
    ${symbol}' = unsafeCreateDOMComponent "${e}"${
      noChildren
        ? ""
        : `

    ${e}_ :: Array JSX -> JSX
    ${e}_ children = ${symbol} { children }`
    }
`;
  }).map(x => x.replace(/^\n\ {4}/, "").replace(/\n\ {4}/g, "\n"))
  .join("\n");

const htmlTagTypes = generatePropTypes(htmlProps.elements.html, htmlProps, null);
const svgTagTypes = generatePropTypes(Object.keys(camelCaseSvgProps), camelCaseSvgProps, 'SharedSVGProps');

console.log(`Writing "${htmlGenFile}" ...`);
fs.writeFileSync(htmlGenFile, htmlHeader + htmlTagTypes);
console.log(`Writing "${svgGenFile}" ...`);
fs.writeFileSync(svgGenFile, svgHeader + svgTagTypes);
console.log("Done.");
