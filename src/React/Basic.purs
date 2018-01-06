module React.Basic
  ( react
  , module React.Basic.DOM
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Data.Function.Uncurried (Fn3, mkFn3)
import React.Basic.DOM as React.Basic.DOM
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

foreign import react_
  :: forall props state
   . { initialState :: state
     , render :: Fn3 props state (state -> Eff (react :: ReactFX) Unit) JSX
     }
  -> ReactComponent props

-- | Create a React component from a _specification_ of that component.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | and a rendering function which takes a value of that state type, additional
-- | _props_ (which will be passed in by the user) and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
react
  :: forall props state
   . { initialState :: state
     , render :: props -> state -> (state -> Eff (react :: ReactFX) Unit) -> JSX
     }
  -> ReactComponent props
react { initialState, render } = react_ { initialState, render: mkFn3 render }
