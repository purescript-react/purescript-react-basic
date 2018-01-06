## Module React.Basic

#### `react`

``` purescript
react :: forall props state. { initialState :: state, render :: props -> state -> (state -> Eff (react :: ReactFX) Unit) -> JSX } -> ReactComponent props
```

Create a React component from a _specification_ of that component.

A _specification_ consists of a state type, an initial value for that state,
and a rendering function which takes a value of that state type, additional
_props_ (which will be passed in by the user) and a state update function.

The rendering function should return a value of type `JSX`, which can be
constructed using the helper functions provided by the `React.Basic.DOM`
module (and re-exported here).


### Re-exported from React.Basic.DOM:

#### `SharedProps`

``` purescript
type SharedProps specific = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: String, autoComplete :: String, autoFocus :: String, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Number, contentEditable :: String, contextMenu :: String, crossOrigin :: String, datatype :: String, dateTime :: String, dir :: String, draggable :: String, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: String, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: String, mediaGroup :: String, minLength :: String, noValidate :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, resource :: String, role :: String, rowSpan :: Number, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: String, srcDoc :: String, srcLang :: String, srcSet :: String, style :: CSS, tabIndex :: String, title :: String, typeof :: String, unselectable :: String, useMap :: String, vocab :: String, wmode :: String, onClick :: EventHandler | specific)
```

Standard props which are shared by all DOM elements.

#### `Props_wbr`

``` purescript
type Props_wbr = ()
```

#### `Props_video`

``` purescript
type Props_video = (controls :: Boolean, height :: String, loop :: Boolean, muted :: Boolean, poster :: String, preload :: String, src :: String, width :: String)
```

#### `Props_var`

``` purescript
type Props_var = ()
```

#### `Props_ul`

``` purescript
type Props_ul = ("type" :: String)
```

#### `Props_u`

``` purescript
type Props_u = ()
```

#### `Props_track`

``` purescript
type Props_track = (default :: Boolean, kind :: String, label :: String, src :: String)
```

#### `Props_tr`

``` purescript
type Props_tr = ()
```

#### `Props_title`

``` purescript
type Props_title = ()
```

#### `Props_time`

``` purescript
type Props_time = ()
```

#### `Props_thead`

``` purescript
type Props_thead = ()
```

#### `Props_th`

``` purescript
type Props_th = (headers :: String, height :: String, scope :: String, width :: String)
```

#### `Props_tfoot`

``` purescript
type Props_tfoot = ()
```

#### `Props_textarea`

``` purescript
type Props_textarea = (autoCapitalize :: String, autoCorrect :: String, cols :: Number, disabled :: Boolean, form :: String, name :: String, onChange :: EventHandler, placeholder :: String, required :: Boolean, rows :: Number, value :: String, wrap :: String)
```

#### `Props_template`

``` purescript
type Props_template = ()
```

#### `Props_td`

``` purescript
type Props_td = (headers :: String, height :: String, scope :: String, width :: String)
```

#### `Props_tbody`

``` purescript
type Props_tbody = ()
```

#### `Props_table`

``` purescript
type Props_table = (summary :: String, width :: String)
```

#### `Props_svg`

``` purescript
type Props_svg = (accentHeight :: String, accumulate :: String, additive :: String, alignmentBaseline :: String, allowReorder :: String, alphabetic :: String, amplitude :: String, arabicForm :: String, ascent :: String, attributeName :: String, attributeType :: String, autoReverse :: String, azimuth :: String, baseFrequency :: String, baseProfile :: String, baselineShift :: String, bbox :: String, begin :: String, bias :: String, by :: String, calcMode :: String, capHeight :: String, clip :: String, clipPath :: String, clipPathUnits :: String, clipRule :: String, color :: String, colorInterpolation :: String, colorInterpolationFilters :: String, colorProfile :: String, colorRendering :: String, contentScriptType :: String, contentStyleType :: String, cursor :: String, cx :: String, cy :: String, d :: String, decelerate :: String, descent :: String, diffuseConstant :: String, direction :: String, display :: String, divisor :: String, dominantBaseline :: String, dur :: String, dx :: String, dy :: String, edgeMode :: String, elevation :: String, enableBackground :: String, end :: String, exponent :: String, externalResourcesRequired :: String, fill :: String, fillOpacity :: String, fillRule :: String, filter :: String, filterRes :: String, filterUnits :: String, floodColor :: String, floodOpacity :: String, focusable :: String, fontFamily :: String, fontSize :: String, fontSizeAdjust :: String, fontStretch :: String, fontStyle :: String, fontVariant :: String, fontWeight :: String, format :: String, from :: String, fx :: String, fy :: String, g1 :: String, g2 :: String, glyphName :: String, glyphOrientationHorizontal :: String, glyphOrientationVertical :: String, glyphRef :: String, gradientTransform :: String, gradientUnits :: String, hanging :: String, height :: String, horizAdvX :: String, horizOriginX :: String, ideographic :: String, imageRendering :: String, "in" :: String, in2 :: String, intercept :: String, k :: String, k1 :: String, k2 :: String, k3 :: String, k4 :: String, kernelMatrix :: String, kernelUnitLength :: String, kerning :: String, keyPoints :: String, keySplines :: String, keyTimes :: String, lengthAdjust :: String, letterSpacing :: String, lightingColor :: String, limitingConeAngle :: String, local :: String, markerEnd :: String, markerHeight :: String, markerMid :: String, markerStart :: String, markerUnits :: String, markerWidth :: String, mask :: String, maskContentUnits :: String, maskUnits :: String, mathematical :: String, mode :: String, numOctaves :: String, offset :: String, opacity :: String, operator :: String, order :: String, orient :: String, orientation :: String, origin :: String, overflow :: String, overlinePosition :: String, overlineThickness :: String, paintOrder :: String, panose1 :: String, pathLength :: String, patternContentUnits :: String, patternTransform :: String, patternUnits :: String, pointerEvents :: String, points :: String, pointsAtX :: String, pointsAtY :: String, pointsAtZ :: String, preserveAlpha :: String, preserveAspectRatio :: String, primitiveUnits :: String, r :: String, radius :: String, refX :: String, refY :: String, renderingIntent :: String, repeatCount :: String, repeatDur :: String, requiredExtensions :: String, requiredFeatures :: String, restart :: String, result :: String, rotate :: String, rx :: String, ry :: String, scale :: String, seed :: String, shapeRendering :: String, slope :: String, spacing :: String, specularConstant :: String, specularExponent :: String, speed :: String, spreadMethod :: String, startOffset :: String, stdDeviation :: String, stemh :: String, stemv :: String, stitchTiles :: String, stopColor :: String, stopOpacity :: String, strikethroughPosition :: String, strikethroughThickness :: String, string :: String, stroke :: String, strokeDasharray :: String, strokeDashoffset :: String, strokeLinecap :: String, strokeLinejoin :: String, strokeMiterlimit :: String, strokeOpacity :: String, strokeWidth :: String, surfaceScale :: String, systemLanguage :: String, tableValues :: String, targetX :: String, targetY :: String, textAnchor :: String, textDecoration :: String, textLength :: String, textRendering :: String, to :: String, transform :: String, u1 :: String, u2 :: String, underlinePosition :: String, underlineThickness :: String, unicode :: String, unicodeBidi :: String, unicodeRange :: String, unitsPerEm :: String, vAlphabetic :: String, vHanging :: String, vIdeographic :: String, vMathematical :: String, values :: String, vectorEffect :: String, version :: String, vertAdvY :: String, vertOriginX :: String, vertOriginY :: String, viewBox :: String, viewTarget :: String, visibility :: String, width :: String, widths :: String, wordSpacing :: String, writingMode :: String, x :: String, x1 :: String, x2 :: String, xChannelSelector :: String, xHeight :: String, xlinkActuate :: String, xlinkArcrole :: String, xlinkHref :: String, xlinkRole :: String, xlinkShow :: String, xlinkTitle :: String, xlinkType :: String, xmlBase :: String, xmlLang :: String, xmlSpace :: String, xmlns :: String, xmlnsXlink :: String, y :: String, y1 :: String, y2 :: String, yChannelSelector :: String, z :: String, zoomAndPan :: String)
```

#### `Props_sup`

``` purescript
type Props_sup = ()
```

#### `Props_summary`

``` purescript
type Props_summary = ()
```

#### `Props_sub`

``` purescript
type Props_sub = ()
```

#### `Props_style`

``` purescript
type Props_style = (media :: String, nonce :: String, title :: String, "type" :: String)
```

#### `Props_strong`

``` purescript
type Props_strong = ()
```

#### `Props_span`

``` purescript
type Props_span = ()
```

#### `Props_source`

``` purescript
type Props_source = (media :: String, sizes :: String, src :: String, "type" :: String)
```

#### `Props_small`

``` purescript
type Props_small = ()
```

#### `Props_slot`

``` purescript
type Props_slot = (name :: String)
```

#### `Props_select`

``` purescript
type Props_select = (disabled :: Boolean, form :: String, multiple :: Boolean, name :: String, onChange :: EventHandler, required :: Boolean, size :: Number, value :: String)
```

#### `Props_section`

``` purescript
type Props_section = ()
```

#### `Props_script`

``` purescript
type Props_script = (async :: Boolean, defer :: Boolean, integrity :: String, nonce :: String, src :: String, "type" :: String)
```

#### `Props_samp`

``` purescript
type Props_samp = ()
```

#### `Props_s`

``` purescript
type Props_s = ()
```

#### `Props_ruby`

``` purescript
type Props_ruby = ()
```

#### `Props_rtc`

``` purescript
type Props_rtc = ()
```

#### `Props_rt`

``` purescript
type Props_rt = ()
```

#### `Props_rp`

``` purescript
type Props_rp = ()
```

#### `Props_rb`

``` purescript
type Props_rb = ()
```

#### `Props_q`

``` purescript
type Props_q = (cite :: String)
```

#### `Props_progress`

``` purescript
type Props_progress = (max :: String, value :: String)
```

#### `Props_pre`

``` purescript
type Props_pre = (width :: String)
```

#### `Props_picture`

``` purescript
type Props_picture = ()
```

#### `Props_param`

``` purescript
type Props_param = (name :: String, "type" :: String, value :: String)
```

#### `Props_p`

``` purescript
type Props_p = ()
```

#### `Props_output`

``` purescript
type Props_output = (form :: String, name :: String)
```

#### `Props_option`

``` purescript
type Props_option = (disabled :: Boolean, label :: String, selected :: Boolean, value :: String)
```

#### `Props_optgroup`

``` purescript
type Props_optgroup = (disabled :: Boolean, label :: String)
```

#### `Props_ol`

``` purescript
type Props_ol = (reversed :: Boolean, start :: Number, "type" :: String)
```

#### `Props_object`

``` purescript
type Props_object = ("data" :: String, form :: String, height :: String, name :: String, "type" :: String, width :: String)
```

#### `Props_noscript`

``` purescript
type Props_noscript = ()
```

#### `Props_nav`

``` purescript
type Props_nav = ()
```

#### `Props_meter`

``` purescript
type Props_meter = (high :: String, low :: String, max :: String, min :: String, optimum :: String, value :: String)
```

#### `Props_meta`

``` purescript
type Props_meta = (content :: String, name :: String)
```

#### `Props_menuitem`

``` purescript
type Props_menuitem = ()
```

#### `Props_menu`

``` purescript
type Props_menu = ()
```

#### `Props_math`

``` purescript
type Props_math = ()
```

#### `Props_mark`

``` purescript
type Props_mark = ()
```

#### `Props_map`

``` purescript
type Props_map = (name :: String)
```

#### `Props_main`

``` purescript
type Props_main = ()
```

#### `Props_link`

``` purescript
type Props_link = (color :: String, href :: String, integrity :: String, media :: String, nonce :: String, rel :: String, scope :: String, sizes :: String, target :: String, title :: String, "type" :: String)
```

#### `Props_li`

``` purescript
type Props_li = ("type" :: String, value :: String)
```

#### `Props_legend`

``` purescript
type Props_legend = ()
```

#### `Props_label`

``` purescript
type Props_label = (form :: String)
```

#### `Props_keygen`

``` purescript
type Props_keygen = (challenge :: String, disabled :: Boolean, form :: String, name :: String)
```

#### `Props_kbd`

``` purescript
type Props_kbd = ()
```

#### `Props_ins`

``` purescript
type Props_ins = (cite :: String)
```

#### `Props_input`

``` purescript
type Props_input = (accept :: String, alt :: String, autoCapitalize :: String, autoCorrect :: String, autoSave :: String, checked :: Boolean, disabled :: Boolean, form :: String, height :: String, list :: String, max :: String, min :: String, multiple :: Boolean, name :: String, onChange :: EventHandler, pattern :: String, placeholder :: String, required :: Boolean, results :: String, size :: Number, src :: String, step :: String, title :: String, "type" :: String, value :: String, width :: String)
```

#### `Props_img`

``` purescript
type Props_img = (alt :: String, height :: String, name :: String, sizes :: String, src :: String, width :: String)
```

#### `Props_iframe`

``` purescript
type Props_iframe = (height :: String, name :: String, sandbox :: String, scrolling :: String, src :: String, width :: String)
```

#### `Props_i`

``` purescript
type Props_i = ()
```

#### `Props_html`

``` purescript
type Props_html = (manifest :: String)
```

#### `Props_hr`

``` purescript
type Props_hr = (size :: Number, width :: String)
```

#### `Props_hgroup`

``` purescript
type Props_hgroup = ()
```

#### `Props_header`

``` purescript
type Props_header = ()
```

#### `Props_head`

``` purescript
type Props_head = (profile :: String)
```

#### `Props_h6`

``` purescript
type Props_h6 = ()
```

#### `Props_h5`

``` purescript
type Props_h5 = ()
```

#### `Props_h4`

``` purescript
type Props_h4 = ()
```

#### `Props_h3`

``` purescript
type Props_h3 = ()
```

#### `Props_h2`

``` purescript
type Props_h2 = ()
```

#### `Props_h1`

``` purescript
type Props_h1 = ()
```

#### `Props_form`

``` purescript
type Props_form = (accept :: String, action :: String, method :: String, name :: String, target :: String)
```

#### `Props_footer`

``` purescript
type Props_footer = ()
```

#### `Props_figure`

``` purescript
type Props_figure = ()
```

#### `Props_figcaption`

``` purescript
type Props_figcaption = ()
```

#### `Props_fieldset`

``` purescript
type Props_fieldset = (disabled :: Boolean, form :: String, name :: String)
```

#### `Props_embed`

``` purescript
type Props_embed = (height :: String, src :: String, "type" :: String, width :: String)
```

#### `Props_em`

``` purescript
type Props_em = ()
```

#### `Props_dt`

``` purescript
type Props_dt = ()
```

#### `Props_dl`

``` purescript
type Props_dl = ()
```

#### `Props_div`

``` purescript
type Props_div = ()
```

#### `Props_dialog`

``` purescript
type Props_dialog = (open :: Boolean)
```

#### `Props_dfn`

``` purescript
type Props_dfn = (title :: String)
```

#### `Props_details`

``` purescript
type Props_details = (open :: Boolean)
```

#### `Props_del`

``` purescript
type Props_del = (cite :: String)
```

#### `Props_dd`

``` purescript
type Props_dd = ()
```

#### `Props_datalist`

``` purescript
type Props_datalist = ()
```

#### `Props_data`

``` purescript
type Props_data = (value :: String)
```

#### `Props_colgroup`

``` purescript
type Props_colgroup = (span :: Number, width :: String)
```

#### `Props_col`

``` purescript
type Props_col = (span :: Number, width :: String)
```

#### `Props_code`

``` purescript
type Props_code = ()
```

#### `Props_cite`

``` purescript
type Props_cite = ()
```

#### `Props_caption`

``` purescript
type Props_caption = ()
```

#### `Props_canvas`

``` purescript
type Props_canvas = (height :: String, width :: String)
```

#### `Props_button`

``` purescript
type Props_button = (disabled :: Boolean, form :: String, name :: String, "type" :: String, value :: String)
```

#### `Props_br`

``` purescript
type Props_br = ()
```

#### `Props_body`

``` purescript
type Props_body = ()
```

#### `Props_blockquote`

``` purescript
type Props_blockquote = (cite :: String)
```

#### `Props_bdo`

``` purescript
type Props_bdo = (dir :: String)
```

#### `Props_bdi`

``` purescript
type Props_bdi = ()
```

#### `Props_base`

``` purescript
type Props_base = (href :: String, target :: String)
```

#### `Props_b`

``` purescript
type Props_b = ()
```

#### `Props_audio`

``` purescript
type Props_audio = (controls :: Boolean, loop :: Boolean, muted :: Boolean, preload :: String, src :: String)
```

#### `Props_aside`

``` purescript
type Props_aside = ()
```

#### `Props_article`

``` purescript
type Props_article = ()
```

#### `Props_area`

``` purescript
type Props_area = (alt :: String, coords :: String, download :: String, href :: String, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `Props_address`

``` purescript
type Props_address = ()
```

#### `Props_abbr`

``` purescript
type Props_abbr = (title :: String)
```

#### `Props_a`

``` purescript
type Props_a = (coords :: String, download :: String, href :: String, name :: String, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `wbr`

``` purescript
wbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_wbr) => {  | attrs } -> JSX
```

#### `video`

``` purescript
video :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_video) => {  | attrs } -> Array JSX -> JSX
```

#### `var`

``` purescript
var :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_var) => {  | attrs } -> Array JSX -> JSX
```

#### `ul`

``` purescript
ul :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ul) => {  | attrs } -> Array JSX -> JSX
```

#### `u`

``` purescript
u :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_u) => {  | attrs } -> Array JSX -> JSX
```

#### `track`

``` purescript
track :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_track) => {  | attrs } -> JSX
```

#### `tr`

``` purescript
tr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tr) => {  | attrs } -> Array JSX -> JSX
```

#### `title`

``` purescript
title :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_title) => {  | attrs } -> Array JSX -> JSX
```

#### `time`

``` purescript
time :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_time) => {  | attrs } -> Array JSX -> JSX
```

#### `thead`

``` purescript
thead :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_thead) => {  | attrs } -> Array JSX -> JSX
```

#### `th`

``` purescript
th :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_th) => {  | attrs } -> Array JSX -> JSX
```

#### `tfoot`

``` purescript
tfoot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tfoot) => {  | attrs } -> Array JSX -> JSX
```

#### `textarea`

``` purescript
textarea :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_textarea) => {  | attrs } -> Array JSX -> JSX
```

#### `text`

``` purescript
text :: String -> JSX
```

Create a text node.

#### `template`

``` purescript
template :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_template) => {  | attrs } -> Array JSX -> JSX
```

#### `td`

``` purescript
td :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_td) => {  | attrs } -> Array JSX -> JSX
```

#### `tbody`

``` purescript
tbody :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tbody) => {  | attrs } -> Array JSX -> JSX
```

#### `table`

``` purescript
table :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_table) => {  | attrs } -> Array JSX -> JSX
```

#### `svg`

``` purescript
svg :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_svg) => {  | attrs } -> Array JSX -> JSX
```

#### `sup`

``` purescript
sup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sup) => {  | attrs } -> Array JSX -> JSX
```

#### `summary`

``` purescript
summary :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_summary) => {  | attrs } -> Array JSX -> JSX
```

#### `sub`

``` purescript
sub :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sub) => {  | attrs } -> Array JSX -> JSX
```

#### `style`

``` purescript
style :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_style) => {  | attrs } -> Array JSX -> JSX
```

#### `strong`

``` purescript
strong :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_strong) => {  | attrs } -> Array JSX -> JSX
```

#### `span`

``` purescript
span :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_span) => {  | attrs } -> Array JSX -> JSX
```

#### `source`

``` purescript
source :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_source) => {  | attrs } -> JSX
```

#### `small`

``` purescript
small :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_small) => {  | attrs } -> Array JSX -> JSX
```

#### `slot`

``` purescript
slot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_slot) => {  | attrs } -> Array JSX -> JSX
```

#### `select`

``` purescript
select :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_select) => {  | attrs } -> Array JSX -> JSX
```

#### `section`

``` purescript
section :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_section) => {  | attrs } -> Array JSX -> JSX
```

#### `script`

``` purescript
script :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_script) => {  | attrs } -> Array JSX -> JSX
```

#### `samp`

``` purescript
samp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_samp) => {  | attrs } -> Array JSX -> JSX
```

#### `s`

``` purescript
s :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_s) => {  | attrs } -> Array JSX -> JSX
```

#### `ruby`

``` purescript
ruby :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ruby) => {  | attrs } -> Array JSX -> JSX
```

#### `rtc`

``` purescript
rtc :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rtc) => {  | attrs } -> Array JSX -> JSX
```

#### `rt`

``` purescript
rt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rt) => {  | attrs } -> Array JSX -> JSX
```

#### `rp`

``` purescript
rp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rp) => {  | attrs } -> Array JSX -> JSX
```

#### `rb`

``` purescript
rb :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rb) => {  | attrs } -> Array JSX -> JSX
```

#### `q`

``` purescript
q :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_q) => {  | attrs } -> Array JSX -> JSX
```

#### `progress`

``` purescript
progress :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_progress) => {  | attrs } -> Array JSX -> JSX
```

#### `pre`

``` purescript
pre :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_pre) => {  | attrs } -> Array JSX -> JSX
```

#### `picture`

``` purescript
picture :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_picture) => {  | attrs } -> Array JSX -> JSX
```

#### `param`

``` purescript
param :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_param) => {  | attrs } -> JSX
```

#### `p`

``` purescript
p :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_p) => {  | attrs } -> Array JSX -> JSX
```

#### `output`

``` purescript
output :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_output) => {  | attrs } -> Array JSX -> JSX
```

#### `option`

``` purescript
option :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_option) => {  | attrs } -> Array JSX -> JSX
```

#### `optgroup`

``` purescript
optgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_optgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `ol`

``` purescript
ol :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ol) => {  | attrs } -> Array JSX -> JSX
```

#### `object`

``` purescript
object :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_object) => {  | attrs } -> Array JSX -> JSX
```

#### `noscript`

``` purescript
noscript :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_noscript) => {  | attrs } -> Array JSX -> JSX
```

#### `nav`

``` purescript
nav :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_nav) => {  | attrs } -> Array JSX -> JSX
```

#### `meter`

``` purescript
meter :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meter) => {  | attrs } -> Array JSX -> JSX
```

#### `meta`

``` purescript
meta :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meta) => {  | attrs } -> JSX
```

#### `menuitem`

``` purescript
menuitem :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menuitem) => {  | attrs } -> Array JSX -> JSX
```

#### `menu`

``` purescript
menu :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menu) => {  | attrs } -> Array JSX -> JSX
```

#### `math`

``` purescript
math :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_math) => {  | attrs } -> Array JSX -> JSX
```

#### `mark`

``` purescript
mark :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_mark) => {  | attrs } -> Array JSX -> JSX
```

#### `map`

``` purescript
map :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_map) => {  | attrs } -> Array JSX -> JSX
```

#### `main`

``` purescript
main :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_main) => {  | attrs } -> Array JSX -> JSX
```

#### `link`

``` purescript
link :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_link) => {  | attrs } -> JSX
```

#### `li`

``` purescript
li :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_li) => {  | attrs } -> Array JSX -> JSX
```

#### `legend`

``` purescript
legend :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_legend) => {  | attrs } -> Array JSX -> JSX
```

#### `label`

``` purescript
label :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_label) => {  | attrs } -> Array JSX -> JSX
```

#### `keygen`

``` purescript
keygen :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_keygen) => {  | attrs } -> Array JSX -> JSX
```

#### `kbd`

``` purescript
kbd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_kbd) => {  | attrs } -> Array JSX -> JSX
```

#### `ins`

``` purescript
ins :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ins) => {  | attrs } -> Array JSX -> JSX
```

#### `input`

``` purescript
input :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_input) => {  | attrs } -> JSX
```

#### `img`

``` purescript
img :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_img) => {  | attrs } -> JSX
```

#### `iframe`

``` purescript
iframe :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_iframe) => {  | attrs } -> Array JSX -> JSX
```

#### `i`

``` purescript
i :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_i) => {  | attrs } -> Array JSX -> JSX
```

#### `html`

``` purescript
html :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_html) => {  | attrs } -> Array JSX -> JSX
```

#### `hr`

``` purescript
hr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hr) => {  | attrs } -> JSX
```

#### `hgroup`

``` purescript
hgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `header`

``` purescript
header :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_header) => {  | attrs } -> Array JSX -> JSX
```

#### `head`

``` purescript
head :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_head) => {  | attrs } -> Array JSX -> JSX
```

#### `h6`

``` purescript
h6 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h6) => {  | attrs } -> Array JSX -> JSX
```

#### `h5`

``` purescript
h5 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h5) => {  | attrs } -> Array JSX -> JSX
```

#### `h4`

``` purescript
h4 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h4) => {  | attrs } -> Array JSX -> JSX
```

#### `h3`

``` purescript
h3 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h3) => {  | attrs } -> Array JSX -> JSX
```

#### `h2`

``` purescript
h2 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h2) => {  | attrs } -> Array JSX -> JSX
```

#### `h1`

``` purescript
h1 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h1) => {  | attrs } -> Array JSX -> JSX
```

#### `form`

``` purescript
form :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_form) => {  | attrs } -> Array JSX -> JSX
```

#### `footer`

``` purescript
footer :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_footer) => {  | attrs } -> Array JSX -> JSX
```

#### `figure`

``` purescript
figure :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figure) => {  | attrs } -> Array JSX -> JSX
```

#### `figcaption`

``` purescript
figcaption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figcaption) => {  | attrs } -> Array JSX -> JSX
```

#### `fieldset`

``` purescript
fieldset :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_fieldset) => {  | attrs } -> Array JSX -> JSX
```

#### `embed`

``` purescript
embed :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_embed) => {  | attrs } -> JSX
```

#### `em`

``` purescript
em :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_em) => {  | attrs } -> Array JSX -> JSX
```

#### `dt`

``` purescript
dt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dt) => {  | attrs } -> Array JSX -> JSX
```

#### `dl`

``` purescript
dl :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dl) => {  | attrs } -> Array JSX -> JSX
```

#### `div`

``` purescript
div :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_div) => {  | attrs } -> Array JSX -> JSX
```

#### `dialog`

``` purescript
dialog :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dialog) => {  | attrs } -> Array JSX -> JSX
```

#### `dfn`

``` purescript
dfn :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dfn) => {  | attrs } -> Array JSX -> JSX
```

#### `details`

``` purescript
details :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_details) => {  | attrs } -> Array JSX -> JSX
```

#### `del`

``` purescript
del :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_del) => {  | attrs } -> Array JSX -> JSX
```

#### `dd`

``` purescript
dd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dd) => {  | attrs } -> Array JSX -> JSX
```

#### `datalist`

``` purescript
datalist :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_datalist) => {  | attrs } -> Array JSX -> JSX
```

#### `data_`

``` purescript
data_ :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_data) => {  | attrs } -> Array JSX -> JSX
```

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

#### `colgroup`

``` purescript
colgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_colgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `col`

``` purescript
col :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_col) => {  | attrs } -> JSX
```

#### `code`

``` purescript
code :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_code) => {  | attrs } -> Array JSX -> JSX
```

#### `cite`

``` purescript
cite :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_cite) => {  | attrs } -> Array JSX -> JSX
```

#### `caption`

``` purescript
caption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_caption) => {  | attrs } -> Array JSX -> JSX
```

#### `canvas`

``` purescript
canvas :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_canvas) => {  | attrs } -> Array JSX -> JSX
```

#### `button`

``` purescript
button :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_button) => {  | attrs } -> Array JSX -> JSX
```

#### `br`

``` purescript
br :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_br) => {  | attrs } -> JSX
```

#### `body`

``` purescript
body :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_body) => {  | attrs } -> Array JSX -> JSX
```

#### `blockquote`

``` purescript
blockquote :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_blockquote) => {  | attrs } -> Array JSX -> JSX
```

#### `bdo`

``` purescript
bdo :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdo) => {  | attrs } -> Array JSX -> JSX
```

#### `bdi`

``` purescript
bdi :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdi) => {  | attrs } -> Array JSX -> JSX
```

#### `base`

``` purescript
base :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_base) => {  | attrs } -> JSX
```

#### `b`

``` purescript
b :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_b) => {  | attrs } -> Array JSX -> JSX
```

#### `audio`

``` purescript
audio :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_audio) => {  | attrs } -> Array JSX -> JSX
```

#### `aside`

``` purescript
aside :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_aside) => {  | attrs } -> Array JSX -> JSX
```

#### `article`

``` purescript
article :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_article) => {  | attrs } -> Array JSX -> JSX
```

#### `area`

``` purescript
area :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_area) => {  | attrs } -> JSX
```

#### `address`

``` purescript
address :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_address) => {  | attrs } -> Array JSX -> JSX
```

#### `abbr`

``` purescript
abbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_abbr) => {  | attrs } -> Array JSX -> JSX
```

#### `a`

``` purescript
a :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_a) => {  | attrs } -> Array JSX -> JSX
```

### Re-exported from React.Basic.Types:

#### `SyntheticEvent`

``` purescript
type SyntheticEvent = { bubbles :: Boolean, cancelable :: Boolean, currentTarget :: DOMNode, defaultPrevented :: Boolean, eventPhase :: Number, isTrusted :: Boolean, target :: DOMNode, timeStamp :: Number, "type" :: String }
```

Event data that we receive from React.

#### `ReactFX`

``` purescript
data ReactFX :: Effect
```

A placeholder effect for all React FFI.

#### `ReactComponent`

``` purescript
data ReactComponent :: Type -> Type
```

A React component which can be used from JavaScript.

#### `JSX`

``` purescript
data JSX :: Type
```

A virtual DOM element.

#### `EventHandler`

``` purescript
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit
```

An event handler, which receives a `SyntheticEvent` and performs some
effects in return.

#### `DOMNode`

``` purescript
data DOMNode :: Type
```

An _actual_ DOM node (not a virtual DOM element!)

#### `CSS`

``` purescript
data CSS :: Type
```

An abstract type representing records of CSS attributes.

