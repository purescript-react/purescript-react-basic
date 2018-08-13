## Module React.Basic.DOM

This module defines helper functions for creating virtual DOM elements
safely.

Note: DOM element props are provided as records, and checked using `Union`
constraints. This means that we don't need to provide all props, but any we
do provide must have the correct types.

#### `render`

``` purescript
render :: JSX -> Element -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element.

Note: Relies on `ReactDOM.render`

#### `render'`

``` purescript
render' :: JSX -> Element -> Effect Unit -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element. The given Effect is run once the
DOM update is complete.

Note: Relies on `ReactDOM.render`

#### `hydrate`

``` purescript
hydrate :: JSX -> Element -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element, attempting to reuse the existing
DOM tree.

Note: Relies on `ReactDOM.hydrate`, generally only
  used with `ReactDOMServer.renderToNodeStream` or
  `ReactDOMServer.renderToString`

#### `hydrate'`

``` purescript
hydrate' :: JSX -> Element -> Effect Unit -> Effect Unit
```

Render or update/re-render a component tree into
a DOM element, attempting to reuse the existing
DOM tree. The given Effect is run once the
DOM update is complete.

Note: Relies on `ReactDOM.hydrate`, generally only
  used with `ReactDOMServer.renderToNodeStream` or
  `ReactDOMServer.renderToString`

#### `unmount`

``` purescript
unmount :: Element -> Effect Boolean
```

Attempt to unmount and clean up the React app
rendered into the given element. Returns `true`
if an app existed and was unmounted successfully.

Note: Relies on `ReactDOM.unmountComponentAtNode`

#### `findDOMNode`

``` purescript
findDOMNode :: ComponentInstance -> Effect (Either Error Node)
```

Returns the current DOM node associated with the given
instance, or an Error if no node was found or the given
instance was not mounted.

Note: Relies on `ReactDOM.findDOMNode`

#### `text`

``` purescript
text :: String -> JSX
```

Create a text node.

#### `css`

``` purescript
css :: forall css. {  | css } -> CSS
```

Create a value of type `CSS` (which can be provided to the `style` property)
from a plain record of CSS attributes.

E.g.

```
div { style: css { padding: "5px" } } [ text "This text is padded." ]
```

#### `mergeStyles`

``` purescript
mergeStyles :: Array CSS -> CSS
```

Merge styles from right to left. Uses `Object.assign`.

E.g.

```
style: mergeCSS [ (css { padding: "5px" }), props.style ]
```


### Re-exported from React.Basic.DOM.Generated:

#### `Props_wbr`

``` purescript
type Props_wbr = ()
```

#### `Props_video`

``` purescript
type Props_video = (children :: Array JSX, controls :: Boolean, height :: String, loop :: Boolean, muted :: Boolean, playsInline :: Boolean, poster :: String, preload :: String, src :: String, width :: String)
```

#### `Props_var`

``` purescript
type Props_var = (children :: Array JSX)
```

#### `Props_ul`

``` purescript
type Props_ul = (children :: Array JSX, "type" :: String)
```

#### `Props_u`

``` purescript
type Props_u = (children :: Array JSX)
```

#### `Props_track`

``` purescript
type Props_track = (default :: Boolean, kind :: String, label :: String, src :: String)
```

#### `Props_tr`

``` purescript
type Props_tr = (children :: Array JSX)
```

#### `Props_title`

``` purescript
type Props_title = (children :: Array JSX)
```

#### `Props_time`

``` purescript
type Props_time = (children :: Array JSX)
```

#### `Props_thead`

``` purescript
type Props_thead = (children :: Array JSX)
```

#### `Props_th`

``` purescript
type Props_th = (children :: Array JSX, headers :: String, height :: String, scope :: String, width :: String)
```

#### `Props_tfoot`

``` purescript
type Props_tfoot = (children :: Array JSX)
```

#### `Props_textarea`

``` purescript
type Props_textarea = (autoCapitalize :: String, autoCorrect :: String, children :: Array JSX, cols :: Number, defaultValue :: String, disabled :: Boolean, form :: String, name :: String, onChange :: EventHandler, placeholder :: String, required :: Boolean, rows :: Number, value :: String, wrap :: String)
```

#### `Props_template`

``` purescript
type Props_template = (children :: Array JSX)
```

#### `Props_td`

``` purescript
type Props_td = (children :: Array JSX, headers :: String, height :: String, scope :: String, width :: String)
```

#### `Props_tbody`

``` purescript
type Props_tbody = (children :: Array JSX)
```

#### `Props_table`

``` purescript
type Props_table = (children :: Array JSX, summary :: String, width :: String)
```

#### `Props_svg`

``` purescript
type Props_svg = (accentHeight :: String, accumulate :: String, additive :: String, alignmentBaseline :: String, allowReorder :: String, alphabetic :: String, amplitude :: String, arabicForm :: String, ascent :: String, attributeName :: String, attributeType :: String, autoReverse :: String, azimuth :: String, baseFrequency :: String, baseProfile :: String, baselineShift :: String, bbox :: String, begin :: String, bias :: String, by :: String, calcMode :: String, capHeight :: String, children :: Array JSX, clip :: String, clipPath :: String, clipPathUnits :: String, clipRule :: String, color :: String, colorInterpolation :: String, colorInterpolationFilters :: String, colorProfile :: String, colorRendering :: String, contentScriptType :: String, contentStyleType :: String, cursor :: String, cx :: String, cy :: String, d :: String, decelerate :: String, descent :: String, diffuseConstant :: String, direction :: String, display :: String, divisor :: String, dominantBaseline :: String, dur :: String, dx :: String, dy :: String, edgeMode :: String, elevation :: String, enableBackground :: String, end :: String, exponent :: String, externalResourcesRequired :: String, fill :: String, fillOpacity :: String, fillRule :: String, filter :: String, filterRes :: String, filterUnits :: String, floodColor :: String, floodOpacity :: String, focusable :: String, fontFamily :: String, fontSize :: String, fontSizeAdjust :: String, fontStretch :: String, fontStyle :: String, fontVariant :: String, fontWeight :: String, format :: String, from :: String, fx :: String, fy :: String, g1 :: String, g2 :: String, glyphName :: String, glyphOrientationHorizontal :: String, glyphOrientationVertical :: String, glyphRef :: String, gradientTransform :: String, gradientUnits :: String, hanging :: String, height :: String, horizAdvX :: String, horizOriginX :: String, ideographic :: String, imageRendering :: String, "in" :: String, in2 :: String, intercept :: String, k :: String, k1 :: String, k2 :: String, k3 :: String, k4 :: String, kernelMatrix :: String, kernelUnitLength :: String, kerning :: String, keyPoints :: String, keySplines :: String, keyTimes :: String, lengthAdjust :: String, letterSpacing :: String, lightingColor :: String, limitingConeAngle :: String, local :: String, markerEnd :: String, markerHeight :: String, markerMid :: String, markerStart :: String, markerUnits :: String, markerWidth :: String, mask :: String, maskContentUnits :: String, maskUnits :: String, mathematical :: String, mode :: String, numOctaves :: String, offset :: String, opacity :: String, operator :: String, order :: String, orient :: String, orientation :: String, origin :: String, overflow :: String, overlinePosition :: String, overlineThickness :: String, paintOrder :: String, panose1 :: String, pathLength :: String, patternContentUnits :: String, patternTransform :: String, patternUnits :: String, pointerEvents :: String, points :: String, pointsAtX :: String, pointsAtY :: String, pointsAtZ :: String, preserveAlpha :: String, preserveAspectRatio :: String, primitiveUnits :: String, r :: String, radius :: String, refX :: String, refY :: String, renderingIntent :: String, repeatCount :: String, repeatDur :: String, requiredExtensions :: String, requiredFeatures :: String, restart :: String, result :: String, rotate :: String, rx :: String, ry :: String, scale :: String, seed :: String, shapeRendering :: String, slope :: String, spacing :: String, specularConstant :: String, specularExponent :: String, speed :: String, spreadMethod :: String, startOffset :: String, stdDeviation :: String, stemh :: String, stemv :: String, stitchTiles :: String, stopColor :: String, stopOpacity :: String, strikethroughPosition :: String, strikethroughThickness :: String, string :: String, stroke :: String, strokeDasharray :: String, strokeDashoffset :: String, strokeLinecap :: String, strokeLinejoin :: String, strokeMiterlimit :: String, strokeOpacity :: String, strokeWidth :: String, surfaceScale :: String, systemLanguage :: String, tableValues :: String, targetX :: String, targetY :: String, textAnchor :: String, textDecoration :: String, textLength :: String, textRendering :: String, to :: String, transform :: String, u1 :: String, u2 :: String, underlinePosition :: String, underlineThickness :: String, unicode :: String, unicodeBidi :: String, unicodeRange :: String, unitsPerEm :: String, vAlphabetic :: String, vHanging :: String, vIdeographic :: String, vMathematical :: String, values :: String, vectorEffect :: String, version :: String, vertAdvY :: String, vertOriginX :: String, vertOriginY :: String, viewBox :: String, viewTarget :: String, visibility :: String, width :: String, widths :: String, wordSpacing :: String, writingMode :: String, x :: String, x1 :: String, x2 :: String, xChannelSelector :: String, xHeight :: String, xlinkActuate :: String, xlinkArcrole :: String, xlinkHref :: String, xlinkRole :: String, xlinkShow :: String, xlinkTitle :: String, xlinkType :: String, xmlBase :: String, xmlLang :: String, xmlSpace :: String, xmlns :: String, xmlnsXlink :: String, y :: String, y1 :: String, y2 :: String, yChannelSelector :: String, z :: String, zoomAndPan :: String)
```

#### `Props_sup`

``` purescript
type Props_sup = (children :: Array JSX)
```

#### `Props_summary`

``` purescript
type Props_summary = (children :: Array JSX)
```

#### `Props_sub`

``` purescript
type Props_sub = (children :: Array JSX)
```

#### `Props_style`

``` purescript
type Props_style = (children :: Array JSX, media :: String, nonce :: String, title :: String, "type" :: String)
```

#### `Props_strong`

``` purescript
type Props_strong = (children :: Array JSX)
```

#### `Props_span`

``` purescript
type Props_span = (children :: Array JSX)
```

#### `Props_source`

``` purescript
type Props_source = (media :: String, sizes :: String, src :: String, "type" :: String)
```

#### `Props_small`

``` purescript
type Props_small = (children :: Array JSX)
```

#### `Props_slot`

``` purescript
type Props_slot = (children :: Array JSX, name :: String)
```

#### `Props_select`

``` purescript
type Props_select = (children :: Array JSX, defaultValue :: String, disabled :: Boolean, form :: String, multiple :: Boolean, name :: String, onChange :: EventHandler, required :: Boolean, size :: Number, value :: String)
```

#### `Props_section`

``` purescript
type Props_section = (children :: Array JSX)
```

#### `Props_script`

``` purescript
type Props_script = (async :: Boolean, children :: Array JSX, defer :: Boolean, integrity :: String, nonce :: String, src :: String, "type" :: String)
```

#### `Props_samp`

``` purescript
type Props_samp = (children :: Array JSX)
```

#### `Props_s`

``` purescript
type Props_s = (children :: Array JSX)
```

#### `Props_ruby`

``` purescript
type Props_ruby = (children :: Array JSX)
```

#### `Props_rtc`

``` purescript
type Props_rtc = (children :: Array JSX)
```

#### `Props_rt`

``` purescript
type Props_rt = (children :: Array JSX)
```

#### `Props_rp`

``` purescript
type Props_rp = (children :: Array JSX)
```

#### `Props_rb`

``` purescript
type Props_rb = (children :: Array JSX)
```

#### `Props_q`

``` purescript
type Props_q = (children :: Array JSX, cite :: String)
```

#### `Props_progress`

``` purescript
type Props_progress = (children :: Array JSX, max :: Number, value :: String)
```

#### `Props_pre`

``` purescript
type Props_pre = (children :: Array JSX, width :: String)
```

#### `Props_picture`

``` purescript
type Props_picture = (children :: Array JSX)
```

#### `Props_param`

``` purescript
type Props_param = (name :: String, "type" :: String, value :: String)
```

#### `Props_p`

``` purescript
type Props_p = (children :: Array JSX)
```

#### `Props_output`

``` purescript
type Props_output = (children :: Array JSX, form :: String, name :: String)
```

#### `Props_option`

``` purescript
type Props_option = (children :: Array JSX, disabled :: Boolean, label :: String, selected :: Boolean, value :: String)
```

#### `Props_optgroup`

``` purescript
type Props_optgroup = (children :: Array JSX, disabled :: Boolean, label :: String)
```

#### `Props_ol`

``` purescript
type Props_ol = (children :: Array JSX, reversed :: Boolean, start :: Number, "type" :: String)
```

#### `Props_object`

``` purescript
type Props_object = (children :: Array JSX, "data" :: String, form :: String, height :: String, name :: String, "type" :: String, width :: String)
```

#### `Props_noscript`

``` purescript
type Props_noscript = (children :: Array JSX)
```

#### `Props_nav`

``` purescript
type Props_nav = (children :: Array JSX)
```

#### `Props_meter`

``` purescript
type Props_meter = (children :: Array JSX, high :: String, low :: String, max :: Number, min :: Number, optimum :: String, value :: String)
```

#### `Props_meta`

``` purescript
type Props_meta = (content :: String, name :: String)
```

#### `Props_menuitem`

``` purescript
type Props_menuitem = (children :: Array JSX)
```

#### `Props_menu`

``` purescript
type Props_menu = (children :: Array JSX)
```

#### `Props_math`

``` purescript
type Props_math = (children :: Array JSX)
```

#### `Props_mark`

``` purescript
type Props_mark = (children :: Array JSX)
```

#### `Props_map`

``` purescript
type Props_map = (children :: Array JSX, name :: String)
```

#### `Props_main`

``` purescript
type Props_main = (children :: Array JSX)
```

#### `Props_link`

``` purescript
type Props_link = (color :: String, href :: String, integrity :: String, media :: String, nonce :: String, rel :: String, scope :: String, sizes :: String, target :: String, title :: String, "type" :: String)
```

#### `Props_li`

``` purescript
type Props_li = (children :: Array JSX, "type" :: String, value :: String)
```

#### `Props_legend`

``` purescript
type Props_legend = (children :: Array JSX)
```

#### `Props_label`

``` purescript
type Props_label = (children :: Array JSX, form :: String)
```

#### `Props_keygen`

``` purescript
type Props_keygen = (challenge :: String, children :: Array JSX, disabled :: Boolean, form :: String, name :: String)
```

#### `Props_kbd`

``` purescript
type Props_kbd = (children :: Array JSX)
```

#### `Props_ins`

``` purescript
type Props_ins = (children :: Array JSX, cite :: String)
```

#### `Props_input`

``` purescript
type Props_input = (accept :: String, alt :: String, autoCapitalize :: String, autoCorrect :: String, autoSave :: String, checked :: Boolean, defaultChecked :: String, defaultValue :: String, disabled :: Boolean, form :: String, height :: String, list :: String, max :: Number, min :: Number, multiple :: Boolean, name :: String, onChange :: EventHandler, pattern :: String, placeholder :: String, required :: Boolean, results :: String, size :: Number, src :: String, step :: String, title :: String, "type" :: String, value :: String, width :: String)
```

#### `Props_img`

``` purescript
type Props_img = (alt :: String, height :: String, name :: String, sizes :: String, src :: String, width :: String)
```

#### `Props_iframe`

``` purescript
type Props_iframe = (children :: Array JSX, height :: String, name :: String, sandbox :: String, scrolling :: String, src :: String, width :: String)
```

#### `Props_i`

``` purescript
type Props_i = (children :: Array JSX)
```

#### `Props_html`

``` purescript
type Props_html = (children :: Array JSX, manifest :: String)
```

#### `Props_hr`

``` purescript
type Props_hr = (size :: Number, width :: String)
```

#### `Props_hgroup`

``` purescript
type Props_hgroup = (children :: Array JSX)
```

#### `Props_header`

``` purescript
type Props_header = (children :: Array JSX)
```

#### `Props_head`

``` purescript
type Props_head = (children :: Array JSX, profile :: String)
```

#### `Props_h6`

``` purescript
type Props_h6 = (children :: Array JSX)
```

#### `Props_h5`

``` purescript
type Props_h5 = (children :: Array JSX)
```

#### `Props_h4`

``` purescript
type Props_h4 = (children :: Array JSX)
```

#### `Props_h3`

``` purescript
type Props_h3 = (children :: Array JSX)
```

#### `Props_h2`

``` purescript
type Props_h2 = (children :: Array JSX)
```

#### `Props_h1`

``` purescript
type Props_h1 = (children :: Array JSX)
```

#### `Props_form`

``` purescript
type Props_form = (accept :: String, action :: String, children :: Array JSX, method :: String, name :: String, onChange :: EventHandler, onInput :: EventHandler, onInvalid :: EventHandler, onSubmit :: EventHandler, target :: String)
```

#### `Props_footer`

``` purescript
type Props_footer = (children :: Array JSX)
```

#### `Props_figure`

``` purescript
type Props_figure = (children :: Array JSX)
```

#### `Props_figcaption`

``` purescript
type Props_figcaption = (children :: Array JSX)
```

#### `Props_fieldset`

``` purescript
type Props_fieldset = (children :: Array JSX, disabled :: Boolean, form :: String, name :: String)
```

#### `Props_embed`

``` purescript
type Props_embed = (height :: String, src :: String, "type" :: String, width :: String)
```

#### `Props_em`

``` purescript
type Props_em = (children :: Array JSX)
```

#### `Props_dt`

``` purescript
type Props_dt = (children :: Array JSX)
```

#### `Props_dl`

``` purescript
type Props_dl = (children :: Array JSX)
```

#### `Props_div`

``` purescript
type Props_div = (children :: Array JSX)
```

#### `Props_dialog`

``` purescript
type Props_dialog = (children :: Array JSX, open :: Boolean)
```

#### `Props_dfn`

``` purescript
type Props_dfn = (children :: Array JSX, title :: String)
```

#### `Props_details`

``` purescript
type Props_details = (children :: Array JSX, open :: Boolean)
```

#### `Props_del`

``` purescript
type Props_del = (children :: Array JSX, cite :: String)
```

#### `Props_dd`

``` purescript
type Props_dd = (children :: Array JSX)
```

#### `Props_datalist`

``` purescript
type Props_datalist = (children :: Array JSX)
```

#### `Props_data`

``` purescript
type Props_data = (children :: Array JSX, value :: String)
```

#### `Props_colgroup`

``` purescript
type Props_colgroup = (children :: Array JSX, span :: Number, width :: String)
```

#### `Props_col`

``` purescript
type Props_col = (span :: Number, width :: String)
```

#### `Props_code`

``` purescript
type Props_code = (children :: Array JSX)
```

#### `Props_cite`

``` purescript
type Props_cite = (children :: Array JSX)
```

#### `Props_caption`

``` purescript
type Props_caption = (children :: Array JSX)
```

#### `Props_canvas`

``` purescript
type Props_canvas = (children :: Array JSX, height :: String, width :: String)
```

#### `Props_button`

``` purescript
type Props_button = (children :: Array JSX, disabled :: Boolean, form :: String, name :: String, "type" :: String, value :: String)
```

#### `Props_br`

``` purescript
type Props_br = ()
```

#### `Props_body`

``` purescript
type Props_body = (children :: Array JSX)
```

#### `Props_blockquote`

``` purescript
type Props_blockquote = (children :: Array JSX, cite :: String)
```

#### `Props_bdo`

``` purescript
type Props_bdo = (children :: Array JSX, dir :: String)
```

#### `Props_bdi`

``` purescript
type Props_bdi = (children :: Array JSX)
```

#### `Props_base`

``` purescript
type Props_base = (href :: String, target :: String)
```

#### `Props_b`

``` purescript
type Props_b = (children :: Array JSX)
```

#### `Props_audio`

``` purescript
type Props_audio = (children :: Array JSX, controls :: Boolean, loop :: Boolean, muted :: Boolean, preload :: String, src :: String)
```

#### `Props_aside`

``` purescript
type Props_aside = (children :: Array JSX)
```

#### `Props_article`

``` purescript
type Props_article = (children :: Array JSX)
```

#### `Props_area`

``` purescript
type Props_area = (alt :: String, coords :: String, download :: String, href :: String, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `Props_address`

``` purescript
type Props_address = (children :: Array JSX)
```

#### `Props_abbr`

``` purescript
type Props_abbr = (children :: Array JSX, title :: String)
```

#### `Props_a`

``` purescript
type Props_a = (children :: Array JSX, coords :: String, download :: String, href :: String, name :: String, onClick :: EventHandler, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `wbr`

``` purescript
wbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_wbr) => {  | attrs } -> JSX
```

#### `video_`

``` purescript
video_ :: Array JSX -> JSX
```

#### `video`

``` purescript
video :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_video) => {  | attrs } -> JSX
```

#### `var_`

``` purescript
var_ :: Array JSX -> JSX
```

#### `var`

``` purescript
var :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_var) => {  | attrs } -> JSX
```

#### `ul_`

``` purescript
ul_ :: Array JSX -> JSX
```

#### `ul`

``` purescript
ul :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ul) => {  | attrs } -> JSX
```

#### `u_`

``` purescript
u_ :: Array JSX -> JSX
```

#### `u`

``` purescript
u :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_u) => {  | attrs } -> JSX
```

#### `track`

``` purescript
track :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_track) => {  | attrs } -> JSX
```

#### `tr_`

``` purescript
tr_ :: Array JSX -> JSX
```

#### `tr`

``` purescript
tr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tr) => {  | attrs } -> JSX
```

#### `title_`

``` purescript
title_ :: Array JSX -> JSX
```

#### `title`

``` purescript
title :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_title) => {  | attrs } -> JSX
```

#### `time_`

``` purescript
time_ :: Array JSX -> JSX
```

#### `time`

``` purescript
time :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_time) => {  | attrs } -> JSX
```

#### `thead_`

``` purescript
thead_ :: Array JSX -> JSX
```

#### `thead`

``` purescript
thead :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_thead) => {  | attrs } -> JSX
```

#### `th_`

``` purescript
th_ :: Array JSX -> JSX
```

#### `th`

``` purescript
th :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_th) => {  | attrs } -> JSX
```

#### `tfoot_`

``` purescript
tfoot_ :: Array JSX -> JSX
```

#### `tfoot`

``` purescript
tfoot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tfoot) => {  | attrs } -> JSX
```

#### `textarea_`

``` purescript
textarea_ :: Array JSX -> JSX
```

#### `textarea`

``` purescript
textarea :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_textarea) => {  | attrs } -> JSX
```

#### `template_`

``` purescript
template_ :: Array JSX -> JSX
```

#### `template`

``` purescript
template :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_template) => {  | attrs } -> JSX
```

#### `td_`

``` purescript
td_ :: Array JSX -> JSX
```

#### `td`

``` purescript
td :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_td) => {  | attrs } -> JSX
```

#### `tbody_`

``` purescript
tbody_ :: Array JSX -> JSX
```

#### `tbody`

``` purescript
tbody :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tbody) => {  | attrs } -> JSX
```

#### `table_`

``` purescript
table_ :: Array JSX -> JSX
```

#### `table`

``` purescript
table :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_table) => {  | attrs } -> JSX
```

#### `svg_`

``` purescript
svg_ :: Array JSX -> JSX
```

#### `svg`

``` purescript
svg :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_svg) => {  | attrs } -> JSX
```

#### `sup_`

``` purescript
sup_ :: Array JSX -> JSX
```

#### `sup`

``` purescript
sup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sup) => {  | attrs } -> JSX
```

#### `summary_`

``` purescript
summary_ :: Array JSX -> JSX
```

#### `summary`

``` purescript
summary :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_summary) => {  | attrs } -> JSX
```

#### `sub_`

``` purescript
sub_ :: Array JSX -> JSX
```

#### `sub`

``` purescript
sub :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sub) => {  | attrs } -> JSX
```

#### `style_`

``` purescript
style_ :: Array JSX -> JSX
```

#### `style`

``` purescript
style :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_style) => {  | attrs } -> JSX
```

#### `strong_`

``` purescript
strong_ :: Array JSX -> JSX
```

#### `strong`

``` purescript
strong :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_strong) => {  | attrs } -> JSX
```

#### `span_`

``` purescript
span_ :: Array JSX -> JSX
```

#### `span`

``` purescript
span :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_span) => {  | attrs } -> JSX
```

#### `source`

``` purescript
source :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_source) => {  | attrs } -> JSX
```

#### `small_`

``` purescript
small_ :: Array JSX -> JSX
```

#### `small`

``` purescript
small :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_small) => {  | attrs } -> JSX
```

#### `slot_`

``` purescript
slot_ :: Array JSX -> JSX
```

#### `slot`

``` purescript
slot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_slot) => {  | attrs } -> JSX
```

#### `select_`

``` purescript
select_ :: Array JSX -> JSX
```

#### `select`

``` purescript
select :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_select) => {  | attrs } -> JSX
```

#### `section_`

``` purescript
section_ :: Array JSX -> JSX
```

#### `section`

``` purescript
section :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_section) => {  | attrs } -> JSX
```

#### `script_`

``` purescript
script_ :: Array JSX -> JSX
```

#### `script`

``` purescript
script :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_script) => {  | attrs } -> JSX
```

#### `samp_`

``` purescript
samp_ :: Array JSX -> JSX
```

#### `samp`

``` purescript
samp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_samp) => {  | attrs } -> JSX
```

#### `s_`

``` purescript
s_ :: Array JSX -> JSX
```

#### `s`

``` purescript
s :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_s) => {  | attrs } -> JSX
```

#### `ruby_`

``` purescript
ruby_ :: Array JSX -> JSX
```

#### `ruby`

``` purescript
ruby :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ruby) => {  | attrs } -> JSX
```

#### `rtc_`

``` purescript
rtc_ :: Array JSX -> JSX
```

#### `rtc`

``` purescript
rtc :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rtc) => {  | attrs } -> JSX
```

#### `rt_`

``` purescript
rt_ :: Array JSX -> JSX
```

#### `rt`

``` purescript
rt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rt) => {  | attrs } -> JSX
```

#### `rp_`

``` purescript
rp_ :: Array JSX -> JSX
```

#### `rp`

``` purescript
rp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rp) => {  | attrs } -> JSX
```

#### `rb_`

``` purescript
rb_ :: Array JSX -> JSX
```

#### `rb`

``` purescript
rb :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rb) => {  | attrs } -> JSX
```

#### `q_`

``` purescript
q_ :: Array JSX -> JSX
```

#### `q`

``` purescript
q :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_q) => {  | attrs } -> JSX
```

#### `progress_`

``` purescript
progress_ :: Array JSX -> JSX
```

#### `progress`

``` purescript
progress :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_progress) => {  | attrs } -> JSX
```

#### `pre_`

``` purescript
pre_ :: Array JSX -> JSX
```

#### `pre`

``` purescript
pre :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_pre) => {  | attrs } -> JSX
```

#### `picture_`

``` purescript
picture_ :: Array JSX -> JSX
```

#### `picture`

``` purescript
picture :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_picture) => {  | attrs } -> JSX
```

#### `param`

``` purescript
param :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_param) => {  | attrs } -> JSX
```

#### `p_`

``` purescript
p_ :: Array JSX -> JSX
```

#### `p`

``` purescript
p :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_p) => {  | attrs } -> JSX
```

#### `output_`

``` purescript
output_ :: Array JSX -> JSX
```

#### `output`

``` purescript
output :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_output) => {  | attrs } -> JSX
```

#### `option_`

``` purescript
option_ :: Array JSX -> JSX
```

#### `option`

``` purescript
option :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_option) => {  | attrs } -> JSX
```

#### `optgroup_`

``` purescript
optgroup_ :: Array JSX -> JSX
```

#### `optgroup`

``` purescript
optgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_optgroup) => {  | attrs } -> JSX
```

#### `ol_`

``` purescript
ol_ :: Array JSX -> JSX
```

#### `ol`

``` purescript
ol :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ol) => {  | attrs } -> JSX
```

#### `object_`

``` purescript
object_ :: Array JSX -> JSX
```

#### `object`

``` purescript
object :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_object) => {  | attrs } -> JSX
```

#### `noscript_`

``` purescript
noscript_ :: Array JSX -> JSX
```

#### `noscript`

``` purescript
noscript :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_noscript) => {  | attrs } -> JSX
```

#### `nav_`

``` purescript
nav_ :: Array JSX -> JSX
```

#### `nav`

``` purescript
nav :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_nav) => {  | attrs } -> JSX
```

#### `meter_`

``` purescript
meter_ :: Array JSX -> JSX
```

#### `meter`

``` purescript
meter :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meter) => {  | attrs } -> JSX
```

#### `meta`

``` purescript
meta :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meta) => {  | attrs } -> JSX
```

#### `menuitem_`

``` purescript
menuitem_ :: Array JSX -> JSX
```

#### `menuitem`

``` purescript
menuitem :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menuitem) => {  | attrs } -> JSX
```

#### `menu_`

``` purescript
menu_ :: Array JSX -> JSX
```

#### `menu`

``` purescript
menu :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menu) => {  | attrs } -> JSX
```

#### `math_`

``` purescript
math_ :: Array JSX -> JSX
```

#### `math`

``` purescript
math :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_math) => {  | attrs } -> JSX
```

#### `mark_`

``` purescript
mark_ :: Array JSX -> JSX
```

#### `mark`

``` purescript
mark :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_mark) => {  | attrs } -> JSX
```

#### `map_`

``` purescript
map_ :: Array JSX -> JSX
```

#### `map`

``` purescript
map :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_map) => {  | attrs } -> JSX
```

#### `main_`

``` purescript
main_ :: Array JSX -> JSX
```

#### `main`

``` purescript
main :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_main) => {  | attrs } -> JSX
```

#### `link`

``` purescript
link :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_link) => {  | attrs } -> JSX
```

#### `li_`

``` purescript
li_ :: Array JSX -> JSX
```

#### `li`

``` purescript
li :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_li) => {  | attrs } -> JSX
```

#### `legend_`

``` purescript
legend_ :: Array JSX -> JSX
```

#### `legend`

``` purescript
legend :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_legend) => {  | attrs } -> JSX
```

#### `label_`

``` purescript
label_ :: Array JSX -> JSX
```

#### `label`

``` purescript
label :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_label) => {  | attrs } -> JSX
```

#### `keygen_`

``` purescript
keygen_ :: Array JSX -> JSX
```

#### `keygen`

``` purescript
keygen :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_keygen) => {  | attrs } -> JSX
```

#### `kbd_`

``` purescript
kbd_ :: Array JSX -> JSX
```

#### `kbd`

``` purescript
kbd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_kbd) => {  | attrs } -> JSX
```

#### `ins_`

``` purescript
ins_ :: Array JSX -> JSX
```

#### `ins`

``` purescript
ins :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ins) => {  | attrs } -> JSX
```

#### `input`

``` purescript
input :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_input) => {  | attrs } -> JSX
```

#### `img`

``` purescript
img :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_img) => {  | attrs } -> JSX
```

#### `iframe_`

``` purescript
iframe_ :: Array JSX -> JSX
```

#### `iframe`

``` purescript
iframe :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_iframe) => {  | attrs } -> JSX
```

#### `i_`

``` purescript
i_ :: Array JSX -> JSX
```

#### `i`

``` purescript
i :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_i) => {  | attrs } -> JSX
```

#### `html_`

``` purescript
html_ :: Array JSX -> JSX
```

#### `html`

``` purescript
html :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_html) => {  | attrs } -> JSX
```

#### `hr`

``` purescript
hr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hr) => {  | attrs } -> JSX
```

#### `hgroup_`

``` purescript
hgroup_ :: Array JSX -> JSX
```

#### `hgroup`

``` purescript
hgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hgroup) => {  | attrs } -> JSX
```

#### `header_`

``` purescript
header_ :: Array JSX -> JSX
```

#### `header`

``` purescript
header :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_header) => {  | attrs } -> JSX
```

#### `head_`

``` purescript
head_ :: Array JSX -> JSX
```

#### `head`

``` purescript
head :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_head) => {  | attrs } -> JSX
```

#### `h6_`

``` purescript
h6_ :: Array JSX -> JSX
```

#### `h6`

``` purescript
h6 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h6) => {  | attrs } -> JSX
```

#### `h5_`

``` purescript
h5_ :: Array JSX -> JSX
```

#### `h5`

``` purescript
h5 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h5) => {  | attrs } -> JSX
```

#### `h4_`

``` purescript
h4_ :: Array JSX -> JSX
```

#### `h4`

``` purescript
h4 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h4) => {  | attrs } -> JSX
```

#### `h3_`

``` purescript
h3_ :: Array JSX -> JSX
```

#### `h3`

``` purescript
h3 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h3) => {  | attrs } -> JSX
```

#### `h2_`

``` purescript
h2_ :: Array JSX -> JSX
```

#### `h2`

``` purescript
h2 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h2) => {  | attrs } -> JSX
```

#### `h1_`

``` purescript
h1_ :: Array JSX -> JSX
```

#### `h1`

``` purescript
h1 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h1) => {  | attrs } -> JSX
```

#### `form_`

``` purescript
form_ :: Array JSX -> JSX
```

#### `form`

``` purescript
form :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_form) => {  | attrs } -> JSX
```

#### `footer_`

``` purescript
footer_ :: Array JSX -> JSX
```

#### `footer`

``` purescript
footer :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_footer) => {  | attrs } -> JSX
```

#### `figure_`

``` purescript
figure_ :: Array JSX -> JSX
```

#### `figure`

``` purescript
figure :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figure) => {  | attrs } -> JSX
```

#### `figcaption_`

``` purescript
figcaption_ :: Array JSX -> JSX
```

#### `figcaption`

``` purescript
figcaption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figcaption) => {  | attrs } -> JSX
```

#### `fieldset_`

``` purescript
fieldset_ :: Array JSX -> JSX
```

#### `fieldset`

``` purescript
fieldset :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_fieldset) => {  | attrs } -> JSX
```

#### `embed`

``` purescript
embed :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_embed) => {  | attrs } -> JSX
```

#### `em_`

``` purescript
em_ :: Array JSX -> JSX
```

#### `em`

``` purescript
em :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_em) => {  | attrs } -> JSX
```

#### `dt_`

``` purescript
dt_ :: Array JSX -> JSX
```

#### `dt`

``` purescript
dt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dt) => {  | attrs } -> JSX
```

#### `dl_`

``` purescript
dl_ :: Array JSX -> JSX
```

#### `dl`

``` purescript
dl :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dl) => {  | attrs } -> JSX
```

#### `div_`

``` purescript
div_ :: Array JSX -> JSX
```

#### `div`

``` purescript
div :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_div) => {  | attrs } -> JSX
```

#### `dialog_`

``` purescript
dialog_ :: Array JSX -> JSX
```

#### `dialog`

``` purescript
dialog :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dialog) => {  | attrs } -> JSX
```

#### `dfn_`

``` purescript
dfn_ :: Array JSX -> JSX
```

#### `dfn`

``` purescript
dfn :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dfn) => {  | attrs } -> JSX
```

#### `details_`

``` purescript
details_ :: Array JSX -> JSX
```

#### `details`

``` purescript
details :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_details) => {  | attrs } -> JSX
```

#### `del_`

``` purescript
del_ :: Array JSX -> JSX
```

#### `del`

``` purescript
del :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_del) => {  | attrs } -> JSX
```

#### `dd_`

``` purescript
dd_ :: Array JSX -> JSX
```

#### `dd`

``` purescript
dd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dd) => {  | attrs } -> JSX
```

#### `datalist_`

``` purescript
datalist_ :: Array JSX -> JSX
```

#### `datalist`

``` purescript
datalist :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_datalist) => {  | attrs } -> JSX
```

#### `data_`

``` purescript
data_ :: Array JSX -> JSX
```

#### `data'`

``` purescript
data' :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_data) => {  | attrs } -> JSX
```

#### `colgroup_`

``` purescript
colgroup_ :: Array JSX -> JSX
```

#### `colgroup`

``` purescript
colgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_colgroup) => {  | attrs } -> JSX
```

#### `col`

``` purescript
col :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_col) => {  | attrs } -> JSX
```

#### `code_`

``` purescript
code_ :: Array JSX -> JSX
```

#### `code`

``` purescript
code :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_code) => {  | attrs } -> JSX
```

#### `cite_`

``` purescript
cite_ :: Array JSX -> JSX
```

#### `cite`

``` purescript
cite :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_cite) => {  | attrs } -> JSX
```

#### `caption_`

``` purescript
caption_ :: Array JSX -> JSX
```

#### `caption`

``` purescript
caption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_caption) => {  | attrs } -> JSX
```

#### `canvas_`

``` purescript
canvas_ :: Array JSX -> JSX
```

#### `canvas`

``` purescript
canvas :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_canvas) => {  | attrs } -> JSX
```

#### `button_`

``` purescript
button_ :: Array JSX -> JSX
```

#### `button`

``` purescript
button :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_button) => {  | attrs } -> JSX
```

#### `br`

``` purescript
br :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_br) => {  | attrs } -> JSX
```

#### `body_`

``` purescript
body_ :: Array JSX -> JSX
```

#### `body`

``` purescript
body :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_body) => {  | attrs } -> JSX
```

#### `blockquote_`

``` purescript
blockquote_ :: Array JSX -> JSX
```

#### `blockquote`

``` purescript
blockquote :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_blockquote) => {  | attrs } -> JSX
```

#### `bdo_`

``` purescript
bdo_ :: Array JSX -> JSX
```

#### `bdo`

``` purescript
bdo :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdo) => {  | attrs } -> JSX
```

#### `bdi_`

``` purescript
bdi_ :: Array JSX -> JSX
```

#### `bdi`

``` purescript
bdi :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdi) => {  | attrs } -> JSX
```

#### `base`

``` purescript
base :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_base) => {  | attrs } -> JSX
```

#### `b_`

``` purescript
b_ :: Array JSX -> JSX
```

#### `b`

``` purescript
b :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_b) => {  | attrs } -> JSX
```

#### `audio_`

``` purescript
audio_ :: Array JSX -> JSX
```

#### `audio`

``` purescript
audio :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_audio) => {  | attrs } -> JSX
```

#### `aside_`

``` purescript
aside_ :: Array JSX -> JSX
```

#### `aside`

``` purescript
aside :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_aside) => {  | attrs } -> JSX
```

#### `article_`

``` purescript
article_ :: Array JSX -> JSX
```

#### `article`

``` purescript
article :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_article) => {  | attrs } -> JSX
```

#### `area`

``` purescript
area :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_area) => {  | attrs } -> JSX
```

#### `address_`

``` purescript
address_ :: Array JSX -> JSX
```

#### `address`

``` purescript
address :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_address) => {  | attrs } -> JSX
```

#### `abbr_`

``` purescript
abbr_ :: Array JSX -> JSX
```

#### `abbr`

``` purescript
abbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_abbr) => {  | attrs } -> JSX
```

#### `a_`

``` purescript
a_ :: Array JSX -> JSX
```

#### `a`

``` purescript
a :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_a) => {  | attrs } -> JSX
```

### Re-exported from React.Basic.DOM.Internal:

#### `SharedProps`

``` purescript
type SharedProps specific = (key :: String, about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: String, autoComplete :: String, autoFocus :: String, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Number, contentEditable :: String, contextMenu :: String, crossOrigin :: String, datatype :: String, dateTime :: String, dir :: String, draggable :: String, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: String, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: String, mediaGroup :: String, minLength :: String, noValidate :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, resource :: String, role :: String, rowSpan :: Number, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: String, srcDoc :: String, srcLang :: String, srcSet :: String, style :: CSS, tabIndex :: String, title :: String, typeof :: String, unselectable :: String, useMap :: String, vocab :: String, wmode :: String, onClick :: EventHandler | specific)
```

Standard props which are shared by all DOM elements.

#### `CSS`

``` purescript
data CSS :: Type
```

An abstract type representing records of CSS attributes.

#### `unsafeCreateDOMComponent`

``` purescript
unsafeCreateDOMComponent :: forall props. String -> Component props
```

