module React.Basic
  ( react
  , component
  , module React.Basic.DOM
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Uncurried (EffFn3, mkEffFn3)
import Data.Function.Uncurried (Fn2, runFn2, Fn3, mkFn3)
import React.Basic.DOM as React.Basic.DOM
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

foreign import react_
  :: forall props state
   . { initialState :: props -> state
     , setup :: EffFn3 (react :: ReactFX) props state (state -> Eff (react :: ReactFX) Unit) Unit
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
   . { initialState :: props -> state
     , setup :: props -> state -> (state -> Eff (react :: ReactFX) Unit) -> Eff (react :: ReactFX) Unit
     , render :: props -> state -> (state -> Eff (react :: ReactFX) Unit) -> JSX
     }
  -> ReactComponent props
react { initialState, setup, render } =
  react_
    { initialState
    , setup: mkEffFn3 setup
    , render: mkFn3 render
    }

foreign import component_ :: forall props. Fn2 (ReactComponent props) props JSX

component
  :: forall props
   . ReactComponent props
  -> props
  -> JSX
component = runFn2 component_
