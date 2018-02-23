module React.Basic
  ( react
  , reactComponent
  , createElement
  , keyed
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Uncurried (EffFn3, mkEffFn3)
import Data.Function.Uncurried (Fn2, runFn2, Fn3, mkFn3)
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

-- | Create a React component from a _specification_ of that component.
-- |
-- | `react` pre-applies `createElement` and returns `props -> JSX`, making it
-- | convenient for consumption within another `purescript-react-basic`
-- | component. Use `reactComponent` for better interop with JavaScript, as it
-- | returns a `ReactComponent`.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | a function to apply incoming props to the internal state, and a rendering
-- | function which takes props, state and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
react
  :: forall props state fx
   . { displayName :: String
     , initialState :: state
     , receiveProps :: props -> state -> (SetState state fx) -> Eff (react :: ReactFX | fx) Unit
     , render :: props -> state -> (SetState state fx) -> JSX
     }
  -> props
  -> JSX
react = createElement <<< reactComponent

-- | Create a React component from a _specification_ of that component, without
-- | pre-applying it to `createElement`. Use this function for more standard
-- | JavaScript React interop.
reactComponent
  :: forall props state fx
   . { displayName :: String
     , initialState :: state
     , receiveProps :: props -> state -> (SetState state fx) -> Eff (react :: ReactFX | fx) Unit
     , render :: props -> state -> (SetState state fx) -> JSX
     }
  -> ReactComponent props
reactComponent { displayName, initialState, receiveProps, render } =
  component_
    { displayName
    , initialState
    , receiveProps: mkEffFn3 receiveProps
    , render: mkFn3 render
    }

-- | SetState uses an update function to modify the current state.
type SetState state fx = (state -> state) -> Eff (react :: ReactFX | fx) Unit

-- | Create a `JSX` node from a React component, by providing the props.
createElement
  :: forall props
   . ReactComponent props
  -> props
  -> JSX
createElement = runFn2 createElement_

foreign import keyed :: Array { key :: String, child :: JSX } -> JSX

-- | Private FFI

foreign import component_
  :: forall props state fx
   . { displayName :: String
     , initialState :: state
     , receiveProps :: EffFn3 (react :: ReactFX | fx) props state (SetState state fx) Unit
     , render :: Fn3 props state (SetState state fx) JSX
     }
  -> ReactComponent props

foreign import createElement_ :: forall props. Fn2 (ReactComponent props) props JSX
