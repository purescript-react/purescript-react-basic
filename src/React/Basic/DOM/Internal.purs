module React.Basic.DOM.Internal where

import React.Basic (ReactComponent)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

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
