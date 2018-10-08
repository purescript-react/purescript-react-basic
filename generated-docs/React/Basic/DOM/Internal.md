## Module React.Basic.DOM.Internal

#### `CSS`

``` purescript
data CSS :: Type
```

An abstract type representing records of CSS attributes.

#### `SharedProps`

``` purescript
type SharedProps specific = (key :: String, about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: String, autoComplete :: String, autoFocus :: String, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Number, contentEditable :: String, contextMenu :: String, crossOrigin :: String, datatype :: String, dateTime :: String, dir :: String, draggable :: String, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: String, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: String, mediaGroup :: String, minLength :: String, noValidate :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, resource :: String, role :: String, rowSpan :: Number, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: String, srcDoc :: String, srcLang :: String, srcSet :: String, style :: CSS, tabIndex :: String, title :: String, typeof :: String, unselectable :: String, useMap :: String, vocab :: String, wmode :: String, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler | specific)
```

Standard props which are shared by all DOM elements.

#### `unsafeCreateDOMComponent`

``` purescript
unsafeCreateDOMComponent :: forall props. String -> Component props
```


