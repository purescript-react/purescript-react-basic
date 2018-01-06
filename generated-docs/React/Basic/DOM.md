## Module React.Basic.DOM

This module defines helper functions for creating virtual DOM elements
safely.

Note: DOM element props are provided as records, and checked using `Union`
constraints. This means that we don't need to provide all props, but any we
do provide must have the correct types.

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

#### `SharedProps`

``` purescript
type SharedProps specific = (about :: String, acceptCharset :: String, accessKey :: String, allowFullScreen :: Boolean, allowTransparency :: String, autoComplete :: String, autoFocus :: String, autoPlay :: Boolean, capture :: Boolean, cellPadding :: String, cellSpacing :: String, charSet :: String, classID :: String, className :: String, colSpan :: Number, contentEditable :: String, contextMenu :: String, crossOrigin :: String, datatype :: String, dateTime :: String, dir :: String, draggable :: String, encType :: String, formAction :: String, formEncType :: String, formMethod :: String, formNoValidate :: String, formTarget :: String, frameBorder :: String, hidden :: Boolean, hrefLang :: String, htmlFor :: String, httpEquiv :: String, icon :: String, id :: String, inlist :: String, inputMode :: String, is :: String, itemID :: String, itemProp :: String, itemRef :: String, itemScope :: Boolean, itemType :: String, keyParams :: String, keyType :: String, lang :: String, marginHeight :: String, marginWidth :: String, maxLength :: String, mediaGroup :: String, minLength :: String, noValidate :: String, prefix :: String, property :: String, radioGroup :: String, readOnly :: Boolean, resource :: String, role :: String, rowSpan :: Number, scoped :: Boolean, seamless :: Boolean, security :: String, spellCheck :: String, srcDoc :: String, srcLang :: String, srcSet :: String, style :: CSS, tabIndex :: String, title :: String, typeof :: String, unselectable :: String, useMap :: String, vocab :: String, wmode :: String, onClick :: EventHandler | specific)
```

Standard props which are shared by all DOM elements.

#### `Props_a`

``` purescript
type Props_a = (coords :: String, download :: String, href :: String, name :: String, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `a`

``` purescript
a :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_a) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_abbr`

``` purescript
type Props_abbr = (title :: String)
```

#### `abbr`

``` purescript
abbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_abbr) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_address`

``` purescript
type Props_address = ()
```

#### `address`

``` purescript
address :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_address) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_area`

``` purescript
type Props_area = (alt :: String, coords :: String, download :: String, href :: String, rel :: String, shape :: String, target :: String, "type" :: String)
```

#### `area`

``` purescript
area :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_area) => {  | attrs } -> JSX
```

#### `Props_article`

``` purescript
type Props_article = ()
```

#### `article`

``` purescript
article :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_article) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_aside`

``` purescript
type Props_aside = ()
```

#### `aside`

``` purescript
aside :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_aside) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_audio`

``` purescript
type Props_audio = (controls :: Boolean, loop :: Boolean, muted :: Boolean, preload :: String, src :: String)
```

#### `audio`

``` purescript
audio :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_audio) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_b`

``` purescript
type Props_b = ()
```

#### `b`

``` purescript
b :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_b) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_base`

``` purescript
type Props_base = (href :: String, target :: String)
```

#### `base`

``` purescript
base :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_base) => {  | attrs } -> JSX
```

#### `Props_bdi`

``` purescript
type Props_bdi = ()
```

#### `bdi`

``` purescript
bdi :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdi) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_bdo`

``` purescript
type Props_bdo = (dir :: String)
```

#### `bdo`

``` purescript
bdo :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_bdo) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_blockquote`

``` purescript
type Props_blockquote = (cite :: String)
```

#### `blockquote`

``` purescript
blockquote :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_blockquote) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_body`

``` purescript
type Props_body = ()
```

#### `body`

``` purescript
body :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_body) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_br`

``` purescript
type Props_br = ()
```

#### `br`

``` purescript
br :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_br) => {  | attrs } -> JSX
```

#### `Props_button`

``` purescript
type Props_button = (disabled :: Boolean, form :: String, name :: String, "type" :: String, value :: String)
```

#### `button`

``` purescript
button :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_button) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_canvas`

``` purescript
type Props_canvas = (height :: String, width :: String)
```

#### `canvas`

``` purescript
canvas :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_canvas) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_caption`

``` purescript
type Props_caption = ()
```

#### `caption`

``` purescript
caption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_caption) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_cite`

``` purescript
type Props_cite = ()
```

#### `cite`

``` purescript
cite :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_cite) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_code`

``` purescript
type Props_code = ()
```

#### `code`

``` purescript
code :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_code) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_col`

``` purescript
type Props_col = (span :: Number, width :: String)
```

#### `col`

``` purescript
col :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_col) => {  | attrs } -> JSX
```

#### `Props_colgroup`

``` purescript
type Props_colgroup = (span :: Number, width :: String)
```

#### `colgroup`

``` purescript
colgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_colgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_data`

``` purescript
type Props_data = (value :: String)
```

#### `data_`

``` purescript
data_ :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_data) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_datalist`

``` purescript
type Props_datalist = ()
```

#### `datalist`

``` purescript
datalist :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_datalist) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_dd`

``` purescript
type Props_dd = ()
```

#### `dd`

``` purescript
dd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dd) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_del`

``` purescript
type Props_del = (cite :: String)
```

#### `del`

``` purescript
del :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_del) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_details`

``` purescript
type Props_details = (open :: Boolean)
```

#### `details`

``` purescript
details :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_details) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_dfn`

``` purescript
type Props_dfn = (title :: String)
```

#### `dfn`

``` purescript
dfn :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dfn) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_dialog`

``` purescript
type Props_dialog = (open :: Boolean)
```

#### `dialog`

``` purescript
dialog :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dialog) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_div`

``` purescript
type Props_div = ()
```

#### `div`

``` purescript
div :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_div) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_dl`

``` purescript
type Props_dl = ()
```

#### `dl`

``` purescript
dl :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dl) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_dt`

``` purescript
type Props_dt = ()
```

#### `dt`

``` purescript
dt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_dt) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_em`

``` purescript
type Props_em = ()
```

#### `em`

``` purescript
em :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_em) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_embed`

``` purescript
type Props_embed = (height :: String, src :: String, "type" :: String, width :: String)
```

#### `embed`

``` purescript
embed :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_embed) => {  | attrs } -> JSX
```

#### `Props_fieldset`

``` purescript
type Props_fieldset = (disabled :: Boolean, form :: String, name :: String)
```

#### `fieldset`

``` purescript
fieldset :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_fieldset) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_figcaption`

``` purescript
type Props_figcaption = ()
```

#### `figcaption`

``` purescript
figcaption :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figcaption) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_figure`

``` purescript
type Props_figure = ()
```

#### `figure`

``` purescript
figure :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_figure) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_footer`

``` purescript
type Props_footer = ()
```

#### `footer`

``` purescript
footer :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_footer) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_form`

``` purescript
type Props_form = (accept :: String, action :: String, method :: String, name :: String, target :: String)
```

#### `form`

``` purescript
form :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_form) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h1`

``` purescript
type Props_h1 = ()
```

#### `h1`

``` purescript
h1 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h1) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h2`

``` purescript
type Props_h2 = ()
```

#### `h2`

``` purescript
h2 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h2) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h3`

``` purescript
type Props_h3 = ()
```

#### `h3`

``` purescript
h3 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h3) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h4`

``` purescript
type Props_h4 = ()
```

#### `h4`

``` purescript
h4 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h4) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h5`

``` purescript
type Props_h5 = ()
```

#### `h5`

``` purescript
h5 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h5) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_h6`

``` purescript
type Props_h6 = ()
```

#### `h6`

``` purescript
h6 :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_h6) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_head`

``` purescript
type Props_head = (profile :: String)
```

#### `head`

``` purescript
head :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_head) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_header`

``` purescript
type Props_header = ()
```

#### `header`

``` purescript
header :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_header) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_hgroup`

``` purescript
type Props_hgroup = ()
```

#### `hgroup`

``` purescript
hgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_hr`

``` purescript
type Props_hr = (size :: Number, width :: String)
```

#### `hr`

``` purescript
hr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_hr) => {  | attrs } -> JSX
```

#### `Props_html`

``` purescript
type Props_html = (manifest :: String)
```

#### `html`

``` purescript
html :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_html) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_i`

``` purescript
type Props_i = ()
```

#### `i`

``` purescript
i :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_i) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_iframe`

``` purescript
type Props_iframe = (height :: String, name :: String, sandbox :: String, scrolling :: String, src :: String, width :: String)
```

#### `iframe`

``` purescript
iframe :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_iframe) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_img`

``` purescript
type Props_img = (alt :: String, height :: String, name :: String, sizes :: String, src :: String, width :: String)
```

#### `img`

``` purescript
img :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_img) => {  | attrs } -> JSX
```

#### `Props_input`

``` purescript
type Props_input = (accept :: String, alt :: String, autoCapitalize :: String, autoCorrect :: String, autoSave :: String, checked :: Boolean, disabled :: Boolean, form :: String, height :: String, list :: String, max :: String, min :: String, multiple :: Boolean, name :: String, onChange :: EventHandler, pattern :: String, placeholder :: String, required :: Boolean, results :: String, size :: Number, src :: String, step :: String, title :: String, "type" :: String, value :: String, width :: String)
```

#### `input`

``` purescript
input :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_input) => {  | attrs } -> JSX
```

#### `Props_ins`

``` purescript
type Props_ins = (cite :: String)
```

#### `ins`

``` purescript
ins :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ins) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_kbd`

``` purescript
type Props_kbd = ()
```

#### `kbd`

``` purescript
kbd :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_kbd) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_keygen`

``` purescript
type Props_keygen = (challenge :: String, disabled :: Boolean, form :: String, name :: String)
```

#### `keygen`

``` purescript
keygen :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_keygen) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_label`

``` purescript
type Props_label = (form :: String)
```

#### `label`

``` purescript
label :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_label) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_legend`

``` purescript
type Props_legend = ()
```

#### `legend`

``` purescript
legend :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_legend) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_li`

``` purescript
type Props_li = ("type" :: String, value :: String)
```

#### `li`

``` purescript
li :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_li) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_link`

``` purescript
type Props_link = (color :: String, href :: String, integrity :: String, media :: String, nonce :: String, rel :: String, scope :: String, sizes :: String, target :: String, title :: String, "type" :: String)
```

#### `link`

``` purescript
link :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_link) => {  | attrs } -> JSX
```

#### `Props_main`

``` purescript
type Props_main = ()
```

#### `main`

``` purescript
main :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_main) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_map`

``` purescript
type Props_map = (name :: String)
```

#### `map`

``` purescript
map :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_map) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_mark`

``` purescript
type Props_mark = ()
```

#### `mark`

``` purescript
mark :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_mark) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_math`

``` purescript
type Props_math = ()
```

#### `math`

``` purescript
math :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_math) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_menu`

``` purescript
type Props_menu = ()
```

#### `menu`

``` purescript
menu :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menu) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_menuitem`

``` purescript
type Props_menuitem = ()
```

#### `menuitem`

``` purescript
menuitem :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_menuitem) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_meta`

``` purescript
type Props_meta = (content :: String, name :: String)
```

#### `meta`

``` purescript
meta :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meta) => {  | attrs } -> JSX
```

#### `Props_meter`

``` purescript
type Props_meter = (high :: String, low :: String, max :: String, min :: String, optimum :: String, value :: String)
```

#### `meter`

``` purescript
meter :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_meter) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_nav`

``` purescript
type Props_nav = ()
```

#### `nav`

``` purescript
nav :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_nav) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_noscript`

``` purescript
type Props_noscript = ()
```

#### `noscript`

``` purescript
noscript :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_noscript) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_object`

``` purescript
type Props_object = ("data" :: String, form :: String, height :: String, name :: String, "type" :: String, width :: String)
```

#### `object`

``` purescript
object :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_object) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_ol`

``` purescript
type Props_ol = (reversed :: Boolean, start :: Number, "type" :: String)
```

#### `ol`

``` purescript
ol :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ol) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_optgroup`

``` purescript
type Props_optgroup = (disabled :: Boolean, label :: String)
```

#### `optgroup`

``` purescript
optgroup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_optgroup) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_option`

``` purescript
type Props_option = (disabled :: Boolean, label :: String, selected :: Boolean, value :: String)
```

#### `option`

``` purescript
option :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_option) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_output`

``` purescript
type Props_output = (form :: String, name :: String)
```

#### `output`

``` purescript
output :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_output) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_p`

``` purescript
type Props_p = ()
```

#### `p`

``` purescript
p :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_p) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_param`

``` purescript
type Props_param = (name :: String, "type" :: String, value :: String)
```

#### `param`

``` purescript
param :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_param) => {  | attrs } -> JSX
```

#### `Props_picture`

``` purescript
type Props_picture = ()
```

#### `picture`

``` purescript
picture :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_picture) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_pre`

``` purescript
type Props_pre = (width :: String)
```

#### `pre`

``` purescript
pre :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_pre) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_progress`

``` purescript
type Props_progress = (max :: String, value :: String)
```

#### `progress`

``` purescript
progress :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_progress) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_q`

``` purescript
type Props_q = (cite :: String)
```

#### `q`

``` purescript
q :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_q) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_rb`

``` purescript
type Props_rb = ()
```

#### `rb`

``` purescript
rb :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rb) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_rp`

``` purescript
type Props_rp = ()
```

#### `rp`

``` purescript
rp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rp) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_rt`

``` purescript
type Props_rt = ()
```

#### `rt`

``` purescript
rt :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rt) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_rtc`

``` purescript
type Props_rtc = ()
```

#### `rtc`

``` purescript
rtc :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_rtc) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_ruby`

``` purescript
type Props_ruby = ()
```

#### `ruby`

``` purescript
ruby :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ruby) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_s`

``` purescript
type Props_s = ()
```

#### `s`

``` purescript
s :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_s) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_samp`

``` purescript
type Props_samp = ()
```

#### `samp`

``` purescript
samp :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_samp) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_script`

``` purescript
type Props_script = (async :: Boolean, defer :: Boolean, integrity :: String, nonce :: String, src :: String, "type" :: String)
```

#### `script`

``` purescript
script :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_script) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_section`

``` purescript
type Props_section = ()
```

#### `section`

``` purescript
section :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_section) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_select`

``` purescript
type Props_select = (disabled :: Boolean, form :: String, multiple :: Boolean, name :: String, onChange :: EventHandler, required :: Boolean, size :: Number, value :: String)
```

#### `select`

``` purescript
select :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_select) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_slot`

``` purescript
type Props_slot = (name :: String)
```

#### `slot`

``` purescript
slot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_slot) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_small`

``` purescript
type Props_small = ()
```

#### `small`

``` purescript
small :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_small) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_source`

``` purescript
type Props_source = (media :: String, sizes :: String, src :: String, "type" :: String)
```

#### `source`

``` purescript
source :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_source) => {  | attrs } -> JSX
```

#### `Props_span`

``` purescript
type Props_span = ()
```

#### `span`

``` purescript
span :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_span) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_strong`

``` purescript
type Props_strong = ()
```

#### `strong`

``` purescript
strong :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_strong) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_style`

``` purescript
type Props_style = (media :: String, nonce :: String, title :: String, "type" :: String)
```

#### `style`

``` purescript
style :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_style) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_sub`

``` purescript
type Props_sub = ()
```

#### `sub`

``` purescript
sub :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sub) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_summary`

``` purescript
type Props_summary = ()
```

#### `summary`

``` purescript
summary :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_summary) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_sup`

``` purescript
type Props_sup = ()
```

#### `sup`

``` purescript
sup :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_sup) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_svg`

``` purescript
type Props_svg = (accentHeight :: String, accumulate :: String, additive :: String, alignmentBaseline :: String, allowReorder :: String, alphabetic :: String, amplitude :: String, arabicForm :: String, ascent :: String, attributeName :: String, attributeType :: String, autoReverse :: String, azimuth :: String, baseFrequency :: String, baseProfile :: String, baselineShift :: String, bbox :: String, begin :: String, bias :: String, by :: String, calcMode :: String, capHeight :: String, clip :: String, clipPath :: String, clipPathUnits :: String, clipRule :: String, color :: String, colorInterpolation :: String, colorInterpolationFilters :: String, colorProfile :: String, colorRendering :: String, contentScriptType :: String, contentStyleType :: String, cursor :: String, cx :: String, cy :: String, d :: String, decelerate :: String, descent :: String, diffuseConstant :: String, direction :: String, display :: String, divisor :: String, dominantBaseline :: String, dur :: String, dx :: String, dy :: String, edgeMode :: String, elevation :: String, enableBackground :: String, end :: String, exponent :: String, externalResourcesRequired :: String, fill :: String, fillOpacity :: String, fillRule :: String, filter :: String, filterRes :: String, filterUnits :: String, floodColor :: String, floodOpacity :: String, focusable :: String, fontFamily :: String, fontSize :: String, fontSizeAdjust :: String, fontStretch :: String, fontStyle :: String, fontVariant :: String, fontWeight :: String, format :: String, from :: String, fx :: String, fy :: String, g1 :: String, g2 :: String, glyphName :: String, glyphOrientationHorizontal :: String, glyphOrientationVertical :: String, glyphRef :: String, gradientTransform :: String, gradientUnits :: String, hanging :: String, height :: String, horizAdvX :: String, horizOriginX :: String, ideographic :: String, imageRendering :: String, "in" :: String, in2 :: String, intercept :: String, k :: String, k1 :: String, k2 :: String, k3 :: String, k4 :: String, kernelMatrix :: String, kernelUnitLength :: String, kerning :: String, keyPoints :: String, keySplines :: String, keyTimes :: String, lengthAdjust :: String, letterSpacing :: String, lightingColor :: String, limitingConeAngle :: String, local :: String, markerEnd :: String, markerHeight :: String, markerMid :: String, markerStart :: String, markerUnits :: String, markerWidth :: String, mask :: String, maskContentUnits :: String, maskUnits :: String, mathematical :: String, mode :: String, numOctaves :: String, offset :: String, opacity :: String, operator :: String, order :: String, orient :: String, orientation :: String, origin :: String, overflow :: String, overlinePosition :: String, overlineThickness :: String, paintOrder :: String, panose1 :: String, pathLength :: String, patternContentUnits :: String, patternTransform :: String, patternUnits :: String, pointerEvents :: String, points :: String, pointsAtX :: String, pointsAtY :: String, pointsAtZ :: String, preserveAlpha :: String, preserveAspectRatio :: String, primitiveUnits :: String, r :: String, radius :: String, refX :: String, refY :: String, renderingIntent :: String, repeatCount :: String, repeatDur :: String, requiredExtensions :: String, requiredFeatures :: String, restart :: String, result :: String, rotate :: String, rx :: String, ry :: String, scale :: String, seed :: String, shapeRendering :: String, slope :: String, spacing :: String, specularConstant :: String, specularExponent :: String, speed :: String, spreadMethod :: String, startOffset :: String, stdDeviation :: String, stemh :: String, stemv :: String, stitchTiles :: String, stopColor :: String, stopOpacity :: String, strikethroughPosition :: String, strikethroughThickness :: String, string :: String, stroke :: String, strokeDasharray :: String, strokeDashoffset :: String, strokeLinecap :: String, strokeLinejoin :: String, strokeMiterlimit :: String, strokeOpacity :: String, strokeWidth :: String, surfaceScale :: String, systemLanguage :: String, tableValues :: String, targetX :: String, targetY :: String, textAnchor :: String, textDecoration :: String, textLength :: String, textRendering :: String, to :: String, transform :: String, u1 :: String, u2 :: String, underlinePosition :: String, underlineThickness :: String, unicode :: String, unicodeBidi :: String, unicodeRange :: String, unitsPerEm :: String, vAlphabetic :: String, vHanging :: String, vIdeographic :: String, vMathematical :: String, values :: String, vectorEffect :: String, version :: String, vertAdvY :: String, vertOriginX :: String, vertOriginY :: String, viewBox :: String, viewTarget :: String, visibility :: String, width :: String, widths :: String, wordSpacing :: String, writingMode :: String, x :: String, x1 :: String, x2 :: String, xChannelSelector :: String, xHeight :: String, xlinkActuate :: String, xlinkArcrole :: String, xlinkHref :: String, xlinkRole :: String, xlinkShow :: String, xlinkTitle :: String, xlinkType :: String, xmlBase :: String, xmlLang :: String, xmlSpace :: String, xmlns :: String, xmlnsXlink :: String, y :: String, y1 :: String, y2 :: String, yChannelSelector :: String, z :: String, zoomAndPan :: String)
```

#### `svg`

``` purescript
svg :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_svg) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_table`

``` purescript
type Props_table = (summary :: String, width :: String)
```

#### `table`

``` purescript
table :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_table) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_tbody`

``` purescript
type Props_tbody = ()
```

#### `tbody`

``` purescript
tbody :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tbody) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_td`

``` purescript
type Props_td = (headers :: String, height :: String, scope :: String, width :: String)
```

#### `td`

``` purescript
td :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_td) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_template`

``` purescript
type Props_template = ()
```

#### `template`

``` purescript
template :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_template) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_textarea`

``` purescript
type Props_textarea = (autoCapitalize :: String, autoCorrect :: String, cols :: Number, disabled :: Boolean, form :: String, name :: String, onChange :: EventHandler, placeholder :: String, required :: Boolean, rows :: Number, value :: String, wrap :: String)
```

#### `textarea`

``` purescript
textarea :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_textarea) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_tfoot`

``` purescript
type Props_tfoot = ()
```

#### `tfoot`

``` purescript
tfoot :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tfoot) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_th`

``` purescript
type Props_th = (headers :: String, height :: String, scope :: String, width :: String)
```

#### `th`

``` purescript
th :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_th) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_thead`

``` purescript
type Props_thead = ()
```

#### `thead`

``` purescript
thead :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_thead) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_time`

``` purescript
type Props_time = ()
```

#### `time`

``` purescript
time :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_time) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_title`

``` purescript
type Props_title = ()
```

#### `title`

``` purescript
title :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_title) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_tr`

``` purescript
type Props_tr = ()
```

#### `tr`

``` purescript
tr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_tr) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_track`

``` purescript
type Props_track = (default :: Boolean, kind :: String, label :: String, src :: String)
```

#### `track`

``` purescript
track :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_track) => {  | attrs } -> JSX
```

#### `Props_u`

``` purescript
type Props_u = ()
```

#### `u`

``` purescript
u :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_u) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_ul`

``` purescript
type Props_ul = ("type" :: String)
```

#### `ul`

``` purescript
ul :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_ul) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_var`

``` purescript
type Props_var = ()
```

#### `var`

``` purescript
var :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_var) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_video`

``` purescript
type Props_video = (controls :: Boolean, height :: String, loop :: Boolean, muted :: Boolean, poster :: String, preload :: String, src :: String, width :: String)
```

#### `video`

``` purescript
video :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_video) => {  | attrs } -> Array JSX -> JSX
```

#### `Props_wbr`

``` purescript
type Props_wbr = ()
```

#### `wbr`

``` purescript
wbr :: forall attrs attrs_. Union attrs attrs_ (SharedProps Props_wbr) => {  | attrs } -> JSX
```


