module React.Basic.DOM.Internal where

import React.Basic (ReactComponent)
import Unsafe.Coerce (unsafeCoerce)

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

unsafeCreateDOMComponent :: forall props. String -> ReactComponent props
unsafeCreateDOMComponent = unsafeCoerce
