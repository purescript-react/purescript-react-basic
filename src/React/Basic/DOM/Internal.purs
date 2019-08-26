module React.Basic.DOM.Internal where

import Prelude

import React.Basic (ReactComponent)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

instance semigroupCSS :: Semigroup CSS where
  append a b = mergeStyles [b, a]

instance monoidCSS :: Monoid CSS where
  mempty = css {}

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | For example:
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Merge styles from right to left. Uses `Object.assign`.
-- |
-- | For example:
-- |
-- | ```
-- | style: mergeCSS [ (css { padding: "5px" }), props.style ]
-- | ```
foreign import mergeStyles :: Array CSS -> CSS

-- Standard props shared by all SVG elements.
-- The string props are from MDN, and the
-- event handlers are the same as in SharedProps
-- (the same events should work for SVG elements)
type SharedSVGProps specific
  = ( id :: String
    , className :: String
    , style :: CSS
    , tabIndex :: String
    , lang :: String
    , xlinkActuate :: String
    , xlinkArcrole :: String
    , xlinkHref :: String
    , xlinkRole :: String
    , xlinkShow :: String
    , xlinkTitle :: String
    , xlinkType :: String
    , xmlBase :: String
    , xmlLang :: String
    , xmlSpace :: String
    , xmlns :: String
    , xmlnsXlink :: String
    , onBlur :: EventHandler
    , onClick :: EventHandler
    , onFocus :: EventHandler
    , onMouseDown :: EventHandler
    , onMouseEnter :: EventHandler
    , onMouseLeave :: EventHandler
    , onMouseMove :: EventHandler
    , onMouseOut :: EventHandler
    , onMouseOver :: EventHandler
    , onMouseUp :: EventHandler
    | specific
    )

unsafeCreateDOMComponent :: forall props. String -> ReactComponent props
unsafeCreateDOMComponent = unsafeCoerce
