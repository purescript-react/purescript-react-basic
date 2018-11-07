-- | This module provides an efficient (no `ReactDOM.findDOMNode`) and
-- | declarative way to aquire a `Node` for an element in your render
-- | tree.
-- |
-- | For example:
-- |
-- | ```purs
-- | render self =
-- |   ref \myRef ->
-- |     case myRef of
-- |       Nothing -> R.text "First DOM render in progress..."
-- |       Just _  -> R.text "First DOM render complete."
-- | ```
module React.Basic.DOM.Components.Ref
  ( ref
  , selectorRef
  , module Web.DOM.ParentNode
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, notNull, null, toMaybe)
import React.Basic (JSX, ReactComponent, element)
import Web.DOM (Node)
import Web.DOM.ParentNode (QuerySelector(..))

foreign import mkRef :: (Nullable ~> Maybe) -> ReactComponent { render :: Maybe Node -> JSX, selector :: Nullable QuerySelector }

ref_ :: ReactComponent { render :: Maybe Node -> JSX, selector :: Nullable QuerySelector }
ref_ = mkRef toMaybe

ref :: (Maybe Node -> JSX) -> JSX
ref render = element ref_ { render, selector: null }

selectorRef :: QuerySelector -> (Maybe Node -> JSX) -> JSX
selectorRef qs render = element ref_ { render, selector: notNull qs }

-- selectorAllRef ::
