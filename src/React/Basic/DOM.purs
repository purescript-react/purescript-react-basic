-- | This module defines helper functions for creating virtual DOM elements
-- | safely.
-- |
-- | Note: DOM element props are provided as records, and checked using `Union`
-- | constraints. This means that we don't need to provide all props, but any we
-- | do provide must have the correct types.

module React.Basic.DOM where

import Data.Either (Either)
import Data.Interval.Duration.Iso (Error)
import Data.Nullable (Nullable)
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Prim.Row (class Union)
import React.Basic (Component, ComponentInstance, JSX, element)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (Node)

findDOMNode :: ComponentInstance -> Effect (Either Error Node)

foreign import findDOMNode_ :: EffectFn1 (Nullable Node)

-- | Create a text node.
text :: String -> JSX
text = unsafeCoerce

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | E.g.
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Merge styles from right to left. Uses `Object.assign`.
-- |
-- | E.g.
-- |
-- | ```
-- | style: mergeCSS [ (css { padding: "5px" }), props.style ]
-- | ```
foreign import mergeStyles :: Array CSS -> CSS
