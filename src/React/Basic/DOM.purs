-- | This module defines helper functions for creating virtual DOM elements
-- | safely.
-- |
-- | __*Note:* DOM element props are provided as records, and checked using `Union`
-- |   constraints. This means that we don't need to provide all props, but any we
-- |   do provide must have the correct types.__

module React.Basic.DOM
  ( module Internal
  , render
  , render'
  , hydrate
  , hydrate'
  , unmount
  , findDOMNode
  , createPortal
  , text
  , module Generated
  ) where

import Prelude

import Data.Either (Either)
import Data.Function.Uncurried (Fn2, runFn2)
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Exception (Error, throw, try)
import Effect.Uncurried (EffectFn1, EffectFn3, runEffectFn1, runEffectFn3)
import React.Basic (ReactComponentInstance, JSX)
import React.Basic.DOM.Generated (Props_a, Props_abbr, Props_address, Props_area, Props_article, Props_aside, Props_audio, Props_b, Props_base, Props_bdi, Props_bdo, Props_blockquote, Props_body, Props_br, Props_button, Props_canvas, Props_caption, Props_cite, Props_code, Props_col, Props_colgroup, Props_data, Props_datalist, Props_dd, Props_del, Props_details, Props_dfn, Props_dialog, Props_div, Props_dl, Props_dt, Props_em, Props_embed, Props_fieldset, Props_figcaption, Props_figure, Props_footer, Props_form, Props_h1, Props_h2, Props_h3, Props_h4, Props_h5, Props_h6, Props_head, Props_header, Props_hgroup, Props_hr, Props_html, Props_i, Props_iframe, Props_img, Props_input, Props_ins, Props_kbd, Props_keygen, Props_label, Props_legend, Props_li, Props_link, Props_main, Props_map, Props_mark, Props_math, Props_menu, Props_menuitem, Props_meta, Props_meter, Props_nav, Props_noscript, Props_object, Props_ol, Props_optgroup, Props_option, Props_output, Props_p, Props_param, Props_picture, Props_pre, Props_progress, Props_q, Props_rb, Props_rp, Props_rt, Props_rtc, Props_ruby, Props_s, Props_samp, Props_script, Props_section, Props_select, Props_slot, Props_small, Props_source, Props_span, Props_strong, Props_style, Props_sub, Props_summary, Props_sup, Props_svg, Props_table, Props_tbody, Props_td, Props_template, Props_textarea, Props_tfoot, Props_th, Props_thead, Props_time, Props_title, Props_tr, Props_track, Props_u, Props_ul, Props_var, Props_video, Props_wbr, a, a_, abbr, abbr_, address, address_, area, article, article_, aside, aside_, audio, audio_, b, b_, base, bdi, bdi_, bdo, bdo_, blockquote, blockquote_, body, body_, br, button, button_, canvas, canvas_, caption, caption_, cite, cite_, code, code_, col, colgroup, colgroup_, data', data_, datalist, datalist_, dd, dd_, del, del_, details, details_, dfn, dfn_, dialog, dialog_, div, div_, dl, dl_, dt, dt_, em, em_, embed, fieldset, fieldset_, figcaption, figcaption_, figure, figure_, footer, footer_, form, form_, h1, h1_, h2, h2_, h3, h3_, h4, h4_, h5, h5_, h6, h6_, head, head_, header, header_, hgroup, hgroup_, hr, html, html_, i, i_, iframe, iframe_, img, input, ins, ins_, kbd, kbd_, keygen, keygen_, label, label_, legend, legend_, li, li_, link, main, main_, map, map_, mark, mark_, math, math_, menu, menu_, menuitem, menuitem_, meta, meter, meter_, nav, nav_, noscript, noscript_, object, object_, ol, ol_, optgroup, optgroup_, option, option_, output, output_, p, p_, param, picture, picture_, pre, pre_, progress, progress_, q, q_, rb, rb_, rp, rp_, rt, rt_, rtc, rtc_, ruby, ruby_, s, s_, samp, samp_, script, script_, section, section_, select, select_, slot, slot_, small, small_, source, span, span_, strong, strong_, style, style_, sub, sub_, summary, summary_, sup, sup_, svg, svg_, table, table_, tbody, tbody_, td, td_, template, template_, textarea, textarea_, tfoot, tfoot_, th, th_, thead, thead_, time, time_, title, title_, tr, tr_, track, u, u_, ul, ul_, var, var_, video, video_, wbr) as Generated
import React.Basic.DOM.Internal (CSS, css, mergeStyles, unsafeCreateDOMComponent) as Internal
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (Element, Node)

-- | Render or update/re-render a component tree into
-- | a DOM element.
-- |
-- | __*Note:* Relies on `ReactDOM.render`__
render :: JSX -> Element -> Effect Unit
render jsx node = render' jsx node (pure unit)

-- | Render or update/re-render a component tree into
-- | a DOM element. The given Effect is run once the
-- | DOM update is complete.
-- |
-- | __*Note:* Relies on `ReactDOM.render`__
render' :: JSX -> Element -> Effect Unit -> Effect Unit
render' = runEffectFn3 render_

foreign import render_ :: EffectFn3 JSX Element (Effect Unit) Unit

-- | Render or update/re-render a component tree into
-- | a DOM element, attempting to reuse the existing
-- | DOM tree.
-- |
-- | __*Note:* Relies on `ReactDOM.hydrate`, generally only
-- |   used with `ReactDOMServer.renderToNodeStream` or
-- |   `ReactDOMServer.renderToString`__
hydrate :: JSX -> Element -> Effect Unit
hydrate jsx node = hydrate' jsx node (pure unit)

-- | Render or update/re-render a component tree into
-- | a DOM element, attempting to reuse the existing
-- | DOM tree. The given Effect is run once the
-- | DOM update is complete.
-- |
-- | __*Note:* Relies on `ReactDOM.hydrate`, generally only
-- |   used with `ReactDOMServer.renderToNodeStream` or
-- |   `ReactDOMServer.renderToString`__
hydrate' :: JSX -> Element -> Effect Unit -> Effect Unit
hydrate' = runEffectFn3 hydrate_

foreign import hydrate_ :: EffectFn3 JSX Element (Effect Unit) Unit

-- | Attempt to unmount and clean up the React app
-- | rendered into the given element. Returns `true`
-- | if an app existed and was unmounted successfully.
-- |
-- | __*Note:* Relies on `ReactDOM.unmountComponentAtNode`__
unmount :: Element -> Effect Boolean
unmount = runEffectFn1 unmountComponentAtNode_

foreign import unmountComponentAtNode_ :: EffectFn1 Element Boolean

-- | Returns the current DOM node associated with the given
-- | instance, or an Error if no node was found or the given
-- | instance was not mounted.
-- |
-- | __*Note:* This function can be *very* slow -- prefer
-- | `React.Basic.DOM.Components.Ref` where possible__
-- |
-- | __*Note:* Relies on `ReactDOM.findDOMNode`__
findDOMNode :: forall props state. ReactComponentInstance props state -> Effect (Either Error Node)
findDOMNode instance_ = try do
  node <- runEffectFn1 findDOMNode_ instance_
  case toMaybe node of
    Nothing -> throw "Node not found."
    Just n  -> pure n

-- | Warning: Relies on `ReactDOM.findDOMNode` which may throw exceptions
foreign import findDOMNode_ :: forall props state. EffectFn1 (ReactComponentInstance props state) (Nullable Node)

-- | Divert a render tree into a separate DOM node. The node's
-- | content will be overwritten and managed by React, similar
-- | to `render` and `hydrate`.
createPortal :: JSX -> Element -> JSX
createPortal = runFn2 createPortal_

foreign import createPortal_ :: Fn2 JSX Element JSX

-- | Create a text node.
text :: String -> JSX
text = unsafeCoerce
