module React.Basic
  ( react
  , statefulComponent
  , statefulComponent'
  , module React.Basic.DOM
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Uncurried (EffFn4, mkEffFn4)
import Data.Function.Uncurried (Fn2, Fn3, mkFn2, mkFn3)
import React.Basic.DOM as React.Basic.DOM
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

foreign import react_
  :: forall props state
   . { initialState :: props -> state
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
     , render :: props -> state -> (state -> Eff (react :: ReactFX) Unit) -> JSX
     }
  -> ReactComponent props
react { initialState, render } = react_ { initialState, render: mkFn3 render }


foreign import reactStatefulComponent_
  :: forall props state action eff
   . { initialState :: props -> state
     , receiveProps :: Fn2 props state state
     , reducer :: EffFn4 (react :: ReactFX | eff) action state (action -> Eff (react :: ReactFX | eff) Unit) (state -> Eff (react :: ReactFX | eff) Unit) Unit
     , render :: Fn3 props state (action -> Eff (react :: ReactFX | eff) Unit) JSX
     }
  -> ReactComponent props

-- | TODO: docs
statefulComponent'
  :: forall props state action eff
   . { initialState :: props -> state
     , receiveProps :: props -> state -> state
     , reducer :: action -> state -> (action -> Eff (react :: ReactFX | eff) Unit) -> Eff (react :: ReactFX | eff) state
     , render :: props -> state -> (action -> Eff (react :: ReactFX | eff) Unit) -> JSX
     }
  -> ReactComponent props
statefulComponent' { initialState, receiveProps, reducer, render } =
  reactStatefulComponent_
    { initialState
    , receiveProps: mkFn2 receiveProps
    , reducer: mkEffFn4 reducer_
    , render: mkFn3 render
    }
  where
    reducer_ action state send callback = do
      newState <- reducer action state send
      callback newState
      
-- | TODO: docs
statefulComponent
  :: forall props state action eff
   . { initialState :: props -> state
     , reducer :: action -> state -> (action -> Eff (react :: ReactFX | eff) Unit) -> Eff (react :: ReactFX | eff) state
     , render :: props -> state -> (action -> Eff (react :: ReactFX | eff) Unit) -> JSX
     }
  -> ReactComponent props
statefulComponent { initialState, reducer, render } =
  statefulComponent'
    { initialState
    , receiveProps: \_ state -> state
    , reducer
    , render
    }