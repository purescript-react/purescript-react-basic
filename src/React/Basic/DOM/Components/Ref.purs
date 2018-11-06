-- | This module provides an efficient (no `ReactDOM.findDOMNode`) and
-- | declarative way to aquire a `Node` for an element in your render
-- | tree.
-- |
-- | For both type safety and performance reasons, `ref` will always
-- | provide a reference to its own `<react-basic-ref>` `Node`, but you
-- | can use this `Node` with `querySelector` to find more specific local
-- | elements.
-- |
-- | For example:
-- |
-- | ```purs
-- | render self =
-- |   ref \myRef ->
-- |     case myRef of
-- |       Nothing -> R.text "DOM render in progress..."
-- |       Just _  -> R.text "DOM render complete."
-- | ```
module React.Basic.DOM.Components.Ref
  ( ref
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import React.Basic (JSX, ReactComponent, element)
import Web.DOM (Node)

foreign import mkRef :: (Nullable ~> Maybe) -> ReactComponent { render :: Maybe Node -> JSX }

ref_ :: ReactComponent { render :: Maybe Node -> JSX }
ref_ = mkRef toMaybe

ref :: (Maybe Node -> JSX) -> JSX
ref render = element ref_ { render }
