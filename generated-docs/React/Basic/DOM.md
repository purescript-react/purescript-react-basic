## Module React.Basic.DOM

This module defines helper functions for creating virtual DOM elements
safely.

__*Note:* DOM element props are provided as records, and checked using `Union`
  constraints. This means that we don't need to provide all props, but any we
  do provide must have the correct types.__

#### `render`

``` purescript
render :: JSX -> Element -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element.

__*Note:* Relies on `ReactDOM.render`__

#### `render'`

``` purescript
render' :: JSX -> Element -> Effect Unit -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element. The given Effect is run once the
DOM update is complete.

__*Note:* Relies on `ReactDOM.render`__

#### `hydrate`

``` purescript
hydrate :: JSX -> Element -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element, attempting to reuse the existing
DOM tree.

__*Note:* Relies on `ReactDOM.hydrate`, generally only
  used with `ReactDOMServer.renderToNodeStream` or
  `ReactDOMServer.renderToString`__

#### `hydrate'`

``` purescript
hydrate' :: JSX -> Element -> Effect Unit -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element, attempting to reuse the existing
DOM tree. The given Effect is run once the
DOM update is complete.

__*Note:* Relies on `ReactDOM.hydrate`, generally only
  used with `ReactDOMServer.renderToNodeStream` or
  `ReactDOMServer.renderToString`__

#### `unmount`

``` purescript
unmount :: Element -> Effect Boolean
```

Attempt to unmount and clean up the React app
rendered into the given element. Returns `true`
if an app existed and was unmounted successfully.

__*Note:* Relies on `ReactDOM.unmountComponentAtNode`__

#### `findDOMNode`

``` purescript
findDOMNode :: forall props state. ReactComponentInstance props state -> Effect (Either Error Node)
```

Returns the current DOM node associated with the given
instance, or an Error if no node was found or the given
instance was not mounted.

__*Note:* This function can be *very* slow -- prefer
`React.Basic.DOM.Components.Ref` where possible__

__*Note:* Relies on `ReactDOM.findDOMNode`__

#### `createPortal`

``` purescript
createPortal :: JSX -> Element -> JSX
```

Divert a render tree into a separate DOM node. The node's
content will be overwritten and managed by React, similar
to `render` and `hydrate`.

#### `text`

``` purescript
text :: String -> JSX
```

Create a text node.

#### `css`

``` purescript
css :: forall css. Record css -> CSS
```

Create a value of type `CSS` (which can be provided to the `style` property)
from a plain record of CSS attributes.

For example:

```
div { style: css { padding: "5px" } } [ text "This text is padded." ]
```

#### `mergeStyles`

``` purescript
mergeStyles :: Array CSS -> CSS
```

Merge styles from right to left. Uses `Object.assign`.

For example:

```
style: mergeCSS [ (css { padding: "5px" }), props.style ]
```


### Re-exported from React.Basic.DOM.Generated:

#### `Props_wbr`

``` purescript
type Props_wbr = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_video`

``` purescript
type Props_video = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, controls :: Boolean, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, loop :: Boolean, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, muted :: Boolean, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, playsInline :: Boolean, poster :: String, prefix :: String, preload :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_var`

``` purescript
type Props_var = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_ul`

``` purescript
type Props_ul = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_u`

``` purescript
type Props_u = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_track`

``` purescript
type Props_track = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, default :: Boolean, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, kind :: String, label :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_tr`

``` purescript
type Props_tr = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_title`

``` purescript
type Props_title = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_time`

``` purescript
type Props_time = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_thead`

``` purescript
type Props_thead = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_th`

``` purescript
type Props_th = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, headers :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scope :: String, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_tfoot`

``` purescript
type Props_tfoot = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_textarea`

``` purescript
type Props_textarea = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoCapitalize :: String, autoComplete :: Boolean, autoCorrect :: String, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, cols :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, defaultValue :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onChange :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, placeholder :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), required :: Boolean, resource :: String, role :: String, rowSpan :: Int, rows :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String, wrap :: String)
```

#### `Props_template`

``` purescript
type Props_template = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_td`

``` purescript
type Props_td = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, headers :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scope :: String, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_tbody`

``` purescript
type Props_tbody = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_table`

``` purescript
type Props_table = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, summary :: String, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_svg`

``` purescript
type Props_svg = (about :: String, accentHeight :: String, acceptCharset :: String, accessKey :: String, accumulate :: String, additive :: String, alignmentBaseline :: String, allowFullScreen :: Boolean, allowReorder :: String, allowTransparency :: Boolean, alphabetic :: String, amplitude :: String, arabicForm :: String, ascent :: String, attributeName :: String, attributeType :: String, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, autoReverse :: String, azimuth :: String, baseFrequency :: String, baseProfile :: String, baselineShift :: String, bbox :: String, begin :: String, bias :: String, by :: String, calcMode :: String, capHeight :: String, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, clip :: String, clipPath :: String, clipPathUnits :: String, clipRule :: String, colSpan :: Int, color :: String, colorInterpolation :: String, colorInterpolationFilters :: String, colorProfile :: String, colorRendering :: String, contentEditable :: Boolean, contentScriptType :: String, contentStyleType :: String, contextMenu :: String, crossOrigin :: String, cursor :: String, cx :: String, cy :: String, d :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, decelerate :: String, descent :: String, diffuseConstant :: String, dir :: String, direction :: String, display :: String, divisor :: String, dominantBaseline :: String, draggable :: Boolean, dur :: String, dx :: String, dy :: String, edgeMode :: String, elevation :: String, enableBackground :: String, encType :: String, end :: String, exponent :: String, externalResourcesRequired :: String, fill :: String, fillOpacity :: String, fillRule :: String, filter :: String, filterRes :: String, filterUnits :: String, floodColor :: String, floodOpacity :: String, focusable :: String, fontFamily :: String, fontSize :: String, fontSizeAdjust :: String, fontStretch :: String, fontStyle :: String, fontVariant :: String, fontWeight :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, format :: String, frameBorder :: String, from :: String, fx :: String, fy :: String, g1 :: String, g2 :: String, glyphName :: String, glyphOrientationHorizontal :: String, glyphOrientationVertical :: String, glyphRef :: String, gradientTransform :: String, gradientUnits :: String, hanging :: String, height :: String, hidden :: Boolean, horizAdvX :: String, horizOriginX :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, ideographic :: String, imageRendering :: String, in :: String, in2 :: String, inlist :: String, inputMode :: String, intercept :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, k :: String, k1 :: String, k2 :: String, k3 :: String, k4 :: String, kernelMatrix :: String, kernelUnitLength :: String, kerning :: String, key :: String, keyParams :: String, keyPoints :: String, keySplines :: String, keyTimes :: String, keyType :: String, lang :: String, lengthAdjust :: String, letterSpacing :: String, lightingColor :: String, limitingConeAngle :: String, local :: String, marginHeight :: String, marginWidth :: String, markerEnd :: String, markerHeight :: String, markerMid :: String, markerStart :: String, markerUnits :: String, markerWidth :: String, mask :: String, maskContentUnits :: String, maskUnits :: String, mathematical :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, mode :: String, noValidate :: Boolean, numOctaves :: String, offset :: String, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, opacity :: String, operator :: String, order :: String, orient :: String, orientation :: String, origin :: String, overflow :: String, overlinePosition :: String, overlineThickness :: String, paintOrder :: String, panose1 :: String, pathLength :: String, patternContentUnits :: String, patternTransform :: String, patternUnits :: String, pointerEvents :: String, points :: String, pointsAtX :: String, pointsAtY :: String, pointsAtZ :: String, prefix :: String, preserveAlpha :: String, preserveAspectRatio :: String, primitiveUnits :: String, property :: String, r :: String, radioGroup :: String, radius :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), refX :: String, refY :: String, renderingIntent :: String, repeatCount :: String, repeatDur :: String, requiredExtensions :: String, requiredFeatures :: String, resource :: String, restart :: String, result :: String, role :: String, rotate :: String, rowSpan :: Int, rx :: String, ry :: String, scale :: String, scoped :: Boolean, seamless :: Boolean, security :: String, seed :: String, shapeRendering :: String, slope :: String, spacing :: String, specularConstant :: String, specularExponent :: String, speed :: String, spellCheck :: Boolean, spreadMethod :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, startOffset :: String, stdDeviation :: String, stemh :: String, stemv :: String, stitchTiles :: String, stopColor :: String, stopOpacity :: String, strikethroughPosition :: String, strikethroughThickness :: String, string :: String, stroke :: String, strokeDasharray :: String, strokeDashoffset :: String, strokeLinecap :: String, strokeLinejoin :: String, strokeMiterlimit :: String, strokeOpacity :: String, strokeWidth :: String, style :: CSS, suppressContentEditableWarning :: Boolean, surfaceScale :: String, systemLanguage :: String, tabIndex :: Int, tableValues :: String, targetX :: String, targetY :: String, textAnchor :: String, textDecoration :: String, textLength :: String, textRendering :: String, title :: String, to :: String, transform :: String, typeof :: String, u1 :: String, u2 :: String, underlinePosition :: String, underlineThickness :: String, unicode :: String, unicodeBidi :: String, unicodeRange :: String, unitsPerEm :: String, unselectable :: Boolean, useMap :: String, vAlphabetic :: String, vHanging :: String, vIdeographic :: String, vMathematical :: String, values :: String, vectorEffect :: String, version :: String, vertAdvY :: String, vertOriginX :: String, vertOriginY :: String, viewBox :: String, viewTarget :: String, visibility :: String, vocab :: String, width :: String, widths :: String, wmode :: String, wordSpacing :: String, writingMode :: String, x :: String, x1 :: String, x2 :: String, xChannelSelector :: String, xHeight :: String, xlinkActuate :: String, xlinkArcrole :: String, xlinkHref :: String, xlinkRole :: String, xlinkShow :: String, xlinkTitle :: String, xlinkType :: String, xmlBase :: String, xmlLang :: String, xmlSpace :: String, xmlns :: String, xmlnsXlink :: String, y :: String, y1 :: String, y2 :: String, yChannelSelector :: String, z :: String, zoomAndPan :: String)
```

#### `Props_sup`

``` purescript
type Props_sup = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_summary`

``` purescript
type Props_summary = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_sub`

``` purescript
type Props_sub = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_style`

``` purescript
type Props_style = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, media :: String, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, nonce :: String, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_strong`

``` purescript
type Props_strong = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_span`

``` purescript
type Props_span = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_source`

``` purescript
type Props_source = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, media :: String, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, sizes :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_small`

``` purescript
type Props_small = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_slot`

``` purescript
type Props_slot = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_select`

``` purescript
type Props_select = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, defaultValue :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, multiple :: Boolean, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onChange :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), required :: Boolean, resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, size :: Int, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_section`

``` purescript
type Props_section = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_script`

``` purescript
type Props_script = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, async :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, defer :: Boolean, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, integrity :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, nonce :: String, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_samp`

``` purescript
type Props_samp = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_s`

``` purescript
type Props_s = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_ruby`

``` purescript
type Props_ruby = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_rtc`

``` purescript
type Props_rtc = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_rt`

``` purescript
type Props_rt = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_rp`

``` purescript
type Props_rp = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_rb`

``` purescript
type Props_rb = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_q`

``` purescript
type Props_q = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, cite :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_progress`

``` purescript
type Props_progress = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, max :: Number, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_pre`

``` purescript
type Props_pre = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_picture`

``` purescript
type Props_picture = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_param`

``` purescript
type Props_param = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_p`

``` purescript
type Props_p = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_output`

``` purescript
type Props_output = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_option`

``` purescript
type Props_option = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, label :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, selected :: Boolean, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_optgroup`

``` purescript
type Props_optgroup = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, label :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_ol`

``` purescript
type Props_ol = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, reversed :: Boolean, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, start :: Int, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_object`

``` purescript
type Props_object = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, data :: String, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_noscript`

``` purescript
type Props_noscript = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_nav`

``` purescript
type Props_nav = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_meter`

``` purescript
type Props_meter = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, high :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, low :: String, marginHeight :: String, marginWidth :: String, max :: Number, maxLength :: Int, mediaGroup :: String, min :: Number, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, optimum :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_meta`

``` purescript
type Props_meta = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, content :: String, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_menuitem`

``` purescript
type Props_menuitem = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_menu`

``` purescript
type Props_menu = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_math`

``` purescript
type Props_math = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_mark`

``` purescript
type Props_mark = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_map`

``` purescript
type Props_map = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_main`

``` purescript
type Props_main = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_link`

``` purescript
type Props_link = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, color :: String, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, href :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, integrity :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, media :: String, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, nonce :: String, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), rel :: String, resource :: String, role :: String, rowSpan :: Int, scope :: String, scoped :: Boolean, seamless :: Boolean, security :: String, sizes :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, target :: String, title :: String, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_li`

``` purescript
type Props_li = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_legend`

``` purescript
type Props_legend = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_label`

``` purescript
type Props_label = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_keygen`

``` purescript
type Props_keygen = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, challenge :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_kbd`

``` purescript
type Props_kbd = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_ins`

``` purescript
type Props_ins = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, cite :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_input`

``` purescript
type Props_input = (about :: String, accept :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, alt :: String, autoCapitalize :: String, autoComplete :: Boolean, autoCorrect :: String, autoFocus :: Boolean, autoPlay :: Boolean, autoSave :: String, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, checked :: Boolean, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, defaultChecked :: String, defaultValue :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, list :: String, marginHeight :: String, marginWidth :: String, max :: String, maxLength :: Int, mediaGroup :: String, min :: String, minLength :: Int, multiple :: Boolean, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onChange :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, pattern :: String, placeholder :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), required :: Boolean, resource :: String, results :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, size :: Int, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, step :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_img`

``` purescript
type Props_img = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, alt :: String, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, sizes :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_iframe`

``` purescript
type Props_iframe = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, sandbox :: String, scoped :: Boolean, scrolling :: String, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_i`

``` purescript
type Props_i = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_html`

``` purescript
type Props_html = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, manifest :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_hr`

``` purescript
type Props_hr = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, size :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_hgroup`

``` purescript
type Props_hgroup = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_header`

``` purescript
type Props_header = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_head`

``` purescript
type Props_head = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, profile :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h6`

``` purescript
type Props_h6 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h5`

``` purescript
type Props_h5 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h4`

``` purescript
type Props_h4 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h3`

``` purescript
type Props_h3 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h2`

``` purescript
type Props_h2 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_h1`

``` purescript
type Props_h1 = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_form`

``` purescript
type Props_form = (about :: String, accept :: String, acceptCharset :: String, accessKey :: String, action :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, method :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onChange :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onInput :: EventHandler, onInvalid :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, onSubmit :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, target :: String, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_footer`

``` purescript
type Props_footer = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_figure`

``` purescript
type Props_figure = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_figcaption`

``` purescript
type Props_figcaption = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_fieldset`

``` purescript
type Props_fieldset = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_embed`

``` purescript
type Props_embed = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_em`

``` purescript
type Props_em = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_dt`

``` purescript
type Props_dt = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_dl`

``` purescript
type Props_dl = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_div`

``` purescript
type Props_div = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_dialog`

``` purescript
type Props_dialog = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, open :: Boolean, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_dfn`

``` purescript
type Props_dfn = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_details`

``` purescript
type Props_details = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, open :: Boolean, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_del`

``` purescript
type Props_del = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, cite :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_dd`

``` purescript
type Props_dd = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_datalist`

``` purescript
type Props_datalist = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_data`

``` purescript
type Props_data = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_colgroup`

``` purescript
type Props_colgroup = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, span :: Int, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_col`

``` purescript
type Props_col = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, span :: Int, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_code`

``` purescript
type Props_code = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_cite`

``` purescript
type Props_cite = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_caption`

``` purescript
type Props_caption = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_canvas`

``` purescript
type Props_canvas = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, height :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, width :: String, wmode :: String)
```

#### `Props_button`

``` purescript
type Props_button = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, disabled :: Boolean, draggable :: Boolean, encType :: String, form :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, value :: String, vocab :: String, wmode :: String)
```

#### `Props_br`

``` purescript
type Props_br = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_body`

``` purescript
type Props_body = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_blockquote`

``` purescript
type Props_blockquote = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, cite :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_bdo`

``` purescript
type Props_bdo = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_bdi`

``` purescript
type Props_bdi = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_base`

``` purescript
type Props_base = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, href :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, target :: String, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_b`

``` purescript
type Props_b = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_audio`

``` purescript
type Props_audio = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, controls :: Boolean, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, loop :: Boolean, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, muted :: Boolean, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, preload :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, src :: String, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_aside`

``` purescript
type Props_aside = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_article`

``` purescript
type Props_article = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_area`

``` purescript
type Props_area = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, alt :: String, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, coords :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, download :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, href :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), rel :: String, resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, shape :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, target :: String, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_address`

``` purescript
type Props_address = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_abbr`

``` purescript
type Props_abbr = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, title :: String, title :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `Props_a`

``` purescript
type Props_a = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: Boolean, autoComplete :: Boolean, autoFocus :: Boolean, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, children :: Array JSX, classID :: String, className :: String, colSpan :: Int, contentEditable :: Boolean, contextMenu :: String, coords :: String, crossOrigin :: String, dangerouslySetInnerHTML :: { __html :: String }, datatype :: String, dateTime :: String, dir :: String, download :: String, draggable :: Boolean, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: Boolean, formTarget :: String, frameBorder :: String, hidden :: Boolean, href :: String, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, key :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: Int, mediaGroup :: String, minLength :: Int, name :: String, noValidate :: Boolean, onBlur :: EventHandler, onClick :: EventHandler, onFocus :: EventHandler, onKeyDown :: EventHandler, onKeyPress :: EventHandler, onKeyUp :: EventHandler, onMouseDown :: EventHandler, onMouseEnter :: EventHandler, onMouseLeave :: EventHandler, onMouseMove :: EventHandler, onMouseOut :: EventHandler, onMouseOver :: EventHandler, onMouseUp :: EventHandler, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, ref :: Ref (Nullable Node), rel :: String, resource :: String, role :: String, rowSpan :: Int, scoped :: Boolean, seamless :: Boolean, security :: String, shape :: String, spellCheck :: Boolean, srcDoc :: JSX, srcLang :: String, srcSet :: String, style :: CSS, suppressContentEditableWarning :: Boolean, tabIndex :: Int, target :: String, title :: String, type :: String, typeof :: String, unselectable :: Boolean, useMap :: String, vocab :: String, wmode :: String)
```

#### `wbr`

``` purescript
wbr :: forall attrs attrs_. Union attrs attrs_ Props_wbr => Record attrs -> JSX
```

#### `video_`

``` purescript
video_ :: Array JSX -> JSX
```

#### `video`

``` purescript
video :: forall attrs attrs_. Union attrs attrs_ Props_video => Record attrs -> JSX
```

#### `var_`

``` purescript
var_ :: Array JSX -> JSX
```

#### `var`

``` purescript
var :: forall attrs attrs_. Union attrs attrs_ Props_var => Record attrs -> JSX
```

#### `ul_`

``` purescript
ul_ :: Array JSX -> JSX
```

#### `ul`

``` purescript
ul :: forall attrs attrs_. Union attrs attrs_ Props_ul => Record attrs -> JSX
```

#### `u_`

``` purescript
u_ :: Array JSX -> JSX
```

#### `u`

``` purescript
u :: forall attrs attrs_. Union attrs attrs_ Props_u => Record attrs -> JSX
```

#### `track`

``` purescript
track :: forall attrs attrs_. Union attrs attrs_ Props_track => Record attrs -> JSX
```

#### `tr_`

``` purescript
tr_ :: Array JSX -> JSX
```

#### `tr`

``` purescript
tr :: forall attrs attrs_. Union attrs attrs_ Props_tr => Record attrs -> JSX
```

#### `title_`

``` purescript
title_ :: Array JSX -> JSX
```

#### `title`

``` purescript
title :: forall attrs attrs_. Union attrs attrs_ Props_title => Record attrs -> JSX
```

#### `time_`

``` purescript
time_ :: Array JSX -> JSX
```

#### `time`

``` purescript
time :: forall attrs attrs_. Union attrs attrs_ Props_time => Record attrs -> JSX
```

#### `thead_`

``` purescript
thead_ :: Array JSX -> JSX
```

#### `thead`

``` purescript
thead :: forall attrs attrs_. Union attrs attrs_ Props_thead => Record attrs -> JSX
```

#### `th_`

``` purescript
th_ :: Array JSX -> JSX
```

#### `th`

``` purescript
th :: forall attrs attrs_. Union attrs attrs_ Props_th => Record attrs -> JSX
```

#### `tfoot_`

``` purescript
tfoot_ :: Array JSX -> JSX
```

#### `tfoot`

``` purescript
tfoot :: forall attrs attrs_. Union attrs attrs_ Props_tfoot => Record attrs -> JSX
```

#### `textarea_`

``` purescript
textarea_ :: Array JSX -> JSX
```

#### `textarea`

``` purescript
textarea :: forall attrs attrs_. Union attrs attrs_ Props_textarea => Record attrs -> JSX
```

#### `template_`

``` purescript
template_ :: Array JSX -> JSX
```

#### `template`

``` purescript
template :: forall attrs attrs_. Union attrs attrs_ Props_template => Record attrs -> JSX
```

#### `td_`

``` purescript
td_ :: Array JSX -> JSX
```

#### `td`

``` purescript
td :: forall attrs attrs_. Union attrs attrs_ Props_td => Record attrs -> JSX
```

#### `tbody_`

``` purescript
tbody_ :: Array JSX -> JSX
```

#### `tbody`

``` purescript
tbody :: forall attrs attrs_. Union attrs attrs_ Props_tbody => Record attrs -> JSX
```

#### `table_`

``` purescript
table_ :: Array JSX -> JSX
```

#### `table`

``` purescript
table :: forall attrs attrs_. Union attrs attrs_ Props_table => Record attrs -> JSX
```

#### `svg_`

``` purescript
svg_ :: Array JSX -> JSX
```

#### `svg`

``` purescript
svg :: forall attrs attrs_. Union attrs attrs_ Props_svg => Record attrs -> JSX
```

#### `sup_`

``` purescript
sup_ :: Array JSX -> JSX
```

#### `sup`

``` purescript
sup :: forall attrs attrs_. Union attrs attrs_ Props_sup => Record attrs -> JSX
```

#### `summary_`

``` purescript
summary_ :: Array JSX -> JSX
```

#### `summary`

``` purescript
summary :: forall attrs attrs_. Union attrs attrs_ Props_summary => Record attrs -> JSX
```

#### `sub_`

``` purescript
sub_ :: Array JSX -> JSX
```

#### `sub`

``` purescript
sub :: forall attrs attrs_. Union attrs attrs_ Props_sub => Record attrs -> JSX
```

#### `style_`

``` purescript
style_ :: Array JSX -> JSX
```

#### `style`

``` purescript
style :: forall attrs attrs_. Union attrs attrs_ Props_style => Record attrs -> JSX
```

#### `strong_`

``` purescript
strong_ :: Array JSX -> JSX
```

#### `strong`

``` purescript
strong :: forall attrs attrs_. Union attrs attrs_ Props_strong => Record attrs -> JSX
```

#### `span_`

``` purescript
span_ :: Array JSX -> JSX
```

#### `span`

``` purescript
span :: forall attrs attrs_. Union attrs attrs_ Props_span => Record attrs -> JSX
```

#### `source`

``` purescript
source :: forall attrs attrs_. Union attrs attrs_ Props_source => Record attrs -> JSX
```

#### `small_`

``` purescript
small_ :: Array JSX -> JSX
```

#### `small`

``` purescript
small :: forall attrs attrs_. Union attrs attrs_ Props_small => Record attrs -> JSX
```

#### `slot_`

``` purescript
slot_ :: Array JSX -> JSX
```

#### `slot`

``` purescript
slot :: forall attrs attrs_. Union attrs attrs_ Props_slot => Record attrs -> JSX
```

#### `select_`

``` purescript
select_ :: Array JSX -> JSX
```

#### `select`

``` purescript
select :: forall attrs attrs_. Union attrs attrs_ Props_select => Record attrs -> JSX
```

#### `section_`

``` purescript
section_ :: Array JSX -> JSX
```

#### `section`

``` purescript
section :: forall attrs attrs_. Union attrs attrs_ Props_section => Record attrs -> JSX
```

#### `script_`

``` purescript
script_ :: Array JSX -> JSX
```

#### `script`

``` purescript
script :: forall attrs attrs_. Union attrs attrs_ Props_script => Record attrs -> JSX
```

#### `samp_`

``` purescript
samp_ :: Array JSX -> JSX
```

#### `samp`

``` purescript
samp :: forall attrs attrs_. Union attrs attrs_ Props_samp => Record attrs -> JSX
```

#### `s_`

``` purescript
s_ :: Array JSX -> JSX
```

#### `s`

``` purescript
s :: forall attrs attrs_. Union attrs attrs_ Props_s => Record attrs -> JSX
```

#### `ruby_`

``` purescript
ruby_ :: Array JSX -> JSX
```

#### `ruby`

``` purescript
ruby :: forall attrs attrs_. Union attrs attrs_ Props_ruby => Record attrs -> JSX
```

#### `rtc_`

``` purescript
rtc_ :: Array JSX -> JSX
```

#### `rtc`

``` purescript
rtc :: forall attrs attrs_. Union attrs attrs_ Props_rtc => Record attrs -> JSX
```

#### `rt_`

``` purescript
rt_ :: Array JSX -> JSX
```

#### `rt`

``` purescript
rt :: forall attrs attrs_. Union attrs attrs_ Props_rt => Record attrs -> JSX
```

#### `rp_`

``` purescript
rp_ :: Array JSX -> JSX
```

#### `rp`

``` purescript
rp :: forall attrs attrs_. Union attrs attrs_ Props_rp => Record attrs -> JSX
```

#### `rb_`

``` purescript
rb_ :: Array JSX -> JSX
```

#### `rb`

``` purescript
rb :: forall attrs attrs_. Union attrs attrs_ Props_rb => Record attrs -> JSX
```

#### `q_`

``` purescript
q_ :: Array JSX -> JSX
```

#### `q`

``` purescript
q :: forall attrs attrs_. Union attrs attrs_ Props_q => Record attrs -> JSX
```

#### `progress_`

``` purescript
progress_ :: Array JSX -> JSX
```

#### `progress`

``` purescript
progress :: forall attrs attrs_. Union attrs attrs_ Props_progress => Record attrs -> JSX
```

#### `pre_`

``` purescript
pre_ :: Array JSX -> JSX
```

#### `pre`

``` purescript
pre :: forall attrs attrs_. Union attrs attrs_ Props_pre => Record attrs -> JSX
```

#### `picture_`

``` purescript
picture_ :: Array JSX -> JSX
```

#### `picture`

``` purescript
picture :: forall attrs attrs_. Union attrs attrs_ Props_picture => Record attrs -> JSX
```

#### `param`

``` purescript
param :: forall attrs attrs_. Union attrs attrs_ Props_param => Record attrs -> JSX
```

#### `p_`

``` purescript
p_ :: Array JSX -> JSX
```

#### `p`

``` purescript
p :: forall attrs attrs_. Union attrs attrs_ Props_p => Record attrs -> JSX
```

#### `output_`

``` purescript
output_ :: Array JSX -> JSX
```

#### `output`

``` purescript
output :: forall attrs attrs_. Union attrs attrs_ Props_output => Record attrs -> JSX
```

#### `option_`

``` purescript
option_ :: Array JSX -> JSX
```

#### `option`

``` purescript
option :: forall attrs attrs_. Union attrs attrs_ Props_option => Record attrs -> JSX
```

#### `optgroup_`

``` purescript
optgroup_ :: Array JSX -> JSX
```

#### `optgroup`

``` purescript
optgroup :: forall attrs attrs_. Union attrs attrs_ Props_optgroup => Record attrs -> JSX
```

#### `ol_`

``` purescript
ol_ :: Array JSX -> JSX
```

#### `ol`

``` purescript
ol :: forall attrs attrs_. Union attrs attrs_ Props_ol => Record attrs -> JSX
```

#### `object_`

``` purescript
object_ :: Array JSX -> JSX
```

#### `object`

``` purescript
object :: forall attrs attrs_. Union attrs attrs_ Props_object => Record attrs -> JSX
```

#### `noscript_`

``` purescript
noscript_ :: Array JSX -> JSX
```

#### `noscript`

``` purescript
noscript :: forall attrs attrs_. Union attrs attrs_ Props_noscript => Record attrs -> JSX
```

#### `nav_`

``` purescript
nav_ :: Array JSX -> JSX
```

#### `nav`

``` purescript
nav :: forall attrs attrs_. Union attrs attrs_ Props_nav => Record attrs -> JSX
```

#### `meter_`

``` purescript
meter_ :: Array JSX -> JSX
```

#### `meter`

``` purescript
meter :: forall attrs attrs_. Union attrs attrs_ Props_meter => Record attrs -> JSX
```

#### `meta`

``` purescript
meta :: forall attrs attrs_. Union attrs attrs_ Props_meta => Record attrs -> JSX
```

#### `menuitem_`

``` purescript
menuitem_ :: Array JSX -> JSX
```

#### `menuitem`

``` purescript
menuitem :: forall attrs attrs_. Union attrs attrs_ Props_menuitem => Record attrs -> JSX
```

#### `menu_`

``` purescript
menu_ :: Array JSX -> JSX
```

#### `menu`

``` purescript
menu :: forall attrs attrs_. Union attrs attrs_ Props_menu => Record attrs -> JSX
```

#### `math_`

``` purescript
math_ :: Array JSX -> JSX
```

#### `math`

``` purescript
math :: forall attrs attrs_. Union attrs attrs_ Props_math => Record attrs -> JSX
```

#### `mark_`

``` purescript
mark_ :: Array JSX -> JSX
```

#### `mark`

``` purescript
mark :: forall attrs attrs_. Union attrs attrs_ Props_mark => Record attrs -> JSX
```

#### `map_`

``` purescript
map_ :: Array JSX -> JSX
```

#### `map`

``` purescript
map :: forall attrs attrs_. Union attrs attrs_ Props_map => Record attrs -> JSX
```

#### `main_`

``` purescript
main_ :: Array JSX -> JSX
```

#### `main`

``` purescript
main :: forall attrs attrs_. Union attrs attrs_ Props_main => Record attrs -> JSX
```

#### `link`

``` purescript
link :: forall attrs attrs_. Union attrs attrs_ Props_link => Record attrs -> JSX
```

#### `li_`

``` purescript
li_ :: Array JSX -> JSX
```

#### `li`

``` purescript
li :: forall attrs attrs_. Union attrs attrs_ Props_li => Record attrs -> JSX
```

#### `legend_`

``` purescript
legend_ :: Array JSX -> JSX
```

#### `legend`

``` purescript
legend :: forall attrs attrs_. Union attrs attrs_ Props_legend => Record attrs -> JSX
```

#### `label_`

``` purescript
label_ :: Array JSX -> JSX
```

#### `label`

``` purescript
label :: forall attrs attrs_. Union attrs attrs_ Props_label => Record attrs -> JSX
```

#### `keygen_`

``` purescript
keygen_ :: Array JSX -> JSX
```

#### `keygen`

``` purescript
keygen :: forall attrs attrs_. Union attrs attrs_ Props_keygen => Record attrs -> JSX
```

#### `kbd_`

``` purescript
kbd_ :: Array JSX -> JSX
```

#### `kbd`

``` purescript
kbd :: forall attrs attrs_. Union attrs attrs_ Props_kbd => Record attrs -> JSX
```

#### `ins_`

``` purescript
ins_ :: Array JSX -> JSX
```

#### `ins`

``` purescript
ins :: forall attrs attrs_. Union attrs attrs_ Props_ins => Record attrs -> JSX
```

#### `input`

``` purescript
input :: forall attrs attrs_. Union attrs attrs_ Props_input => Record attrs -> JSX
```

#### `img`

``` purescript
img :: forall attrs attrs_. Union attrs attrs_ Props_img => Record attrs -> JSX
```

#### `iframe_`

``` purescript
iframe_ :: Array JSX -> JSX
```

#### `iframe`

``` purescript
iframe :: forall attrs attrs_. Union attrs attrs_ Props_iframe => Record attrs -> JSX
```

#### `i_`

``` purescript
i_ :: Array JSX -> JSX
```

#### `i`

``` purescript
i :: forall attrs attrs_. Union attrs attrs_ Props_i => Record attrs -> JSX
```

#### `html_`

``` purescript
html_ :: Array JSX -> JSX
```

#### `html`

``` purescript
html :: forall attrs attrs_. Union attrs attrs_ Props_html => Record attrs -> JSX
```

#### `hr`

``` purescript
hr :: forall attrs attrs_. Union attrs attrs_ Props_hr => Record attrs -> JSX
```

#### `hgroup_`

``` purescript
hgroup_ :: Array JSX -> JSX
```

#### `hgroup`

``` purescript
hgroup :: forall attrs attrs_. Union attrs attrs_ Props_hgroup => Record attrs -> JSX
```

#### `header_`

``` purescript
header_ :: Array JSX -> JSX
```

#### `header`

``` purescript
header :: forall attrs attrs_. Union attrs attrs_ Props_header => Record attrs -> JSX
```

#### `head_`

``` purescript
head_ :: Array JSX -> JSX
```

#### `head`

``` purescript
head :: forall attrs attrs_. Union attrs attrs_ Props_head => Record attrs -> JSX
```

#### `h6_`

``` purescript
h6_ :: Array JSX -> JSX
```

#### `h6`

``` purescript
h6 :: forall attrs attrs_. Union attrs attrs_ Props_h6 => Record attrs -> JSX
```

#### `h5_`

``` purescript
h5_ :: Array JSX -> JSX
```

#### `h5`

``` purescript
h5 :: forall attrs attrs_. Union attrs attrs_ Props_h5 => Record attrs -> JSX
```

#### `h4_`

``` purescript
h4_ :: Array JSX -> JSX
```

#### `h4`

``` purescript
h4 :: forall attrs attrs_. Union attrs attrs_ Props_h4 => Record attrs -> JSX
```

#### `h3_`

``` purescript
h3_ :: Array JSX -> JSX
```

#### `h3`

``` purescript
h3 :: forall attrs attrs_. Union attrs attrs_ Props_h3 => Record attrs -> JSX
```

#### `h2_`

``` purescript
h2_ :: Array JSX -> JSX
```

#### `h2`

``` purescript
h2 :: forall attrs attrs_. Union attrs attrs_ Props_h2 => Record attrs -> JSX
```

#### `h1_`

``` purescript
h1_ :: Array JSX -> JSX
```

#### `h1`

``` purescript
h1 :: forall attrs attrs_. Union attrs attrs_ Props_h1 => Record attrs -> JSX
```

#### `form_`

``` purescript
form_ :: Array JSX -> JSX
```

#### `form`

``` purescript
form :: forall attrs attrs_. Union attrs attrs_ Props_form => Record attrs -> JSX
```

#### `footer_`

``` purescript
footer_ :: Array JSX -> JSX
```

#### `footer`

``` purescript
footer :: forall attrs attrs_. Union attrs attrs_ Props_footer => Record attrs -> JSX
```

#### `figure_`

``` purescript
figure_ :: Array JSX -> JSX
```

#### `figure`

``` purescript
figure :: forall attrs attrs_. Union attrs attrs_ Props_figure => Record attrs -> JSX
```

#### `figcaption_`

``` purescript
figcaption_ :: Array JSX -> JSX
```

#### `figcaption`

``` purescript
figcaption :: forall attrs attrs_. Union attrs attrs_ Props_figcaption => Record attrs -> JSX
```

#### `fieldset_`

``` purescript
fieldset_ :: Array JSX -> JSX
```

#### `fieldset`

``` purescript
fieldset :: forall attrs attrs_. Union attrs attrs_ Props_fieldset => Record attrs -> JSX
```

#### `embed`

``` purescript
embed :: forall attrs attrs_. Union attrs attrs_ Props_embed => Record attrs -> JSX
```

#### `em_`

``` purescript
em_ :: Array JSX -> JSX
```

#### `em`

``` purescript
em :: forall attrs attrs_. Union attrs attrs_ Props_em => Record attrs -> JSX
```

#### `dt_`

``` purescript
dt_ :: Array JSX -> JSX
```

#### `dt`

``` purescript
dt :: forall attrs attrs_. Union attrs attrs_ Props_dt => Record attrs -> JSX
```

#### `dl_`

``` purescript
dl_ :: Array JSX -> JSX
```

#### `dl`

``` purescript
dl :: forall attrs attrs_. Union attrs attrs_ Props_dl => Record attrs -> JSX
```

#### `div_`

``` purescript
div_ :: Array JSX -> JSX
```

#### `div`

``` purescript
div :: forall attrs attrs_. Union attrs attrs_ Props_div => Record attrs -> JSX
```

#### `dialog_`

``` purescript
dialog_ :: Array JSX -> JSX
```

#### `dialog`

``` purescript
dialog :: forall attrs attrs_. Union attrs attrs_ Props_dialog => Record attrs -> JSX
```

#### `dfn_`

``` purescript
dfn_ :: Array JSX -> JSX
```

#### `dfn`

``` purescript
dfn :: forall attrs attrs_. Union attrs attrs_ Props_dfn => Record attrs -> JSX
```

#### `details_`

``` purescript
details_ :: Array JSX -> JSX
```

#### `details`

``` purescript
details :: forall attrs attrs_. Union attrs attrs_ Props_details => Record attrs -> JSX
```

#### `del_`

``` purescript
del_ :: Array JSX -> JSX
```

#### `del`

``` purescript
del :: forall attrs attrs_. Union attrs attrs_ Props_del => Record attrs -> JSX
```

#### `dd_`

``` purescript
dd_ :: Array JSX -> JSX
```

#### `dd`

``` purescript
dd :: forall attrs attrs_. Union attrs attrs_ Props_dd => Record attrs -> JSX
```

#### `datalist_`

``` purescript
datalist_ :: Array JSX -> JSX
```

#### `datalist`

``` purescript
datalist :: forall attrs attrs_. Union attrs attrs_ Props_datalist => Record attrs -> JSX
```

#### `data_`

``` purescript
data_ :: Array JSX -> JSX
```

#### `data'`

``` purescript
data' :: forall attrs attrs_. Union attrs attrs_ Props_data => Record attrs -> JSX
```

#### `colgroup_`

``` purescript
colgroup_ :: Array JSX -> JSX
```

#### `colgroup`

``` purescript
colgroup :: forall attrs attrs_. Union attrs attrs_ Props_colgroup => Record attrs -> JSX
```

#### `col`

``` purescript
col :: forall attrs attrs_. Union attrs attrs_ Props_col => Record attrs -> JSX
```

#### `code_`

``` purescript
code_ :: Array JSX -> JSX
```

#### `code`

``` purescript
code :: forall attrs attrs_. Union attrs attrs_ Props_code => Record attrs -> JSX
```

#### `cite_`

``` purescript
cite_ :: Array JSX -> JSX
```

#### `cite`

``` purescript
cite :: forall attrs attrs_. Union attrs attrs_ Props_cite => Record attrs -> JSX
```

#### `caption_`

``` purescript
caption_ :: Array JSX -> JSX
```

#### `caption`

``` purescript
caption :: forall attrs attrs_. Union attrs attrs_ Props_caption => Record attrs -> JSX
```

#### `canvas_`

``` purescript
canvas_ :: Array JSX -> JSX
```

#### `canvas`

``` purescript
canvas :: forall attrs attrs_. Union attrs attrs_ Props_canvas => Record attrs -> JSX
```

#### `button_`

``` purescript
button_ :: Array JSX -> JSX
```

#### `button`

``` purescript
button :: forall attrs attrs_. Union attrs attrs_ Props_button => Record attrs -> JSX
```

#### `br`

``` purescript
br :: forall attrs attrs_. Union attrs attrs_ Props_br => Record attrs -> JSX
```

#### `body_`

``` purescript
body_ :: Array JSX -> JSX
```

#### `body`

``` purescript
body :: forall attrs attrs_. Union attrs attrs_ Props_body => Record attrs -> JSX
```

#### `blockquote_`

``` purescript
blockquote_ :: Array JSX -> JSX
```

#### `blockquote`

``` purescript
blockquote :: forall attrs attrs_. Union attrs attrs_ Props_blockquote => Record attrs -> JSX
```

#### `bdo_`

``` purescript
bdo_ :: Array JSX -> JSX
```

#### `bdo`

``` purescript
bdo :: forall attrs attrs_. Union attrs attrs_ Props_bdo => Record attrs -> JSX
```

#### `bdi_`

``` purescript
bdi_ :: Array JSX -> JSX
```

#### `bdi`

``` purescript
bdi :: forall attrs attrs_. Union attrs attrs_ Props_bdi => Record attrs -> JSX
```

#### `base`

``` purescript
base :: forall attrs attrs_. Union attrs attrs_ Props_base => Record attrs -> JSX
```

#### `b_`

``` purescript
b_ :: Array JSX -> JSX
```

#### `b`

``` purescript
b :: forall attrs attrs_. Union attrs attrs_ Props_b => Record attrs -> JSX
```

#### `audio_`

``` purescript
audio_ :: Array JSX -> JSX
```

#### `audio`

``` purescript
audio :: forall attrs attrs_. Union attrs attrs_ Props_audio => Record attrs -> JSX
```

#### `aside_`

``` purescript
aside_ :: Array JSX -> JSX
```

#### `aside`

``` purescript
aside :: forall attrs attrs_. Union attrs attrs_ Props_aside => Record attrs -> JSX
```

#### `article_`

``` purescript
article_ :: Array JSX -> JSX
```

#### `article`

``` purescript
article :: forall attrs attrs_. Union attrs attrs_ Props_article => Record attrs -> JSX
```

#### `area`

``` purescript
area :: forall attrs attrs_. Union attrs attrs_ Props_area => Record attrs -> JSX
```

#### `address_`

``` purescript
address_ :: Array JSX -> JSX
```

#### `address`

``` purescript
address :: forall attrs attrs_. Union attrs attrs_ Props_address => Record attrs -> JSX
```

#### `abbr_`

``` purescript
abbr_ :: Array JSX -> JSX
```

#### `abbr`

``` purescript
abbr :: forall attrs attrs_. Union attrs attrs_ Props_abbr => Record attrs -> JSX
```

#### `a_`

``` purescript
a_ :: Array JSX -> JSX
```

#### `a`

``` purescript
a :: forall attrs attrs_. Union attrs attrs_ Props_a => Record attrs -> JSX
```

### Re-exported from React.Basic.DOM.Internal:

#### `CSS`

``` purescript
data CSS :: Type
```

An abstract type representing records of CSS attributes.

#### `unsafeCreateDOMComponent`

``` purescript
unsafeCreateDOMComponent :: forall props. String -> ReactComponent props
```

