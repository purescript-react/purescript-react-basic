module React.Basic
  ( react
  , ReactSpec
  , Dispatcher
  , Reducer
  , Render
  , module React.Basic.DOM
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import React.Basic.DOM as React.Basic.DOM
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

type ReactSpec eff props state action =
  ( initialState :: props -> state
  , receiveProps :: props -> state -> state
  , didMount :: props -> state -> action
  , didUpdate :: props -> state -> action
  , reducer :: Reducer eff action state
  , render :: Render eff props state action
  , displayName :: String
  )

type Dispatcher eff action
   = action
  -> Eff (react :: ReactFX | eff) Unit

type Reducer eff action state
   = action
  -> state
  -> (Dispatcher eff action)
  -> Eff (react :: ReactFX | eff) state

type Render eff props state action
   = props
  -> state
  -> (Dispatcher eff action)
  -> JSX

-- | Create a React component from a _specification_ of that component.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | and a rendering function which takes a value of that state type, additional
-- | _props_ (which will be passed in by the user) and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
foreign import react
  :: forall props state action eff spec spec_
   . Union spec spec_ (ReactSpec eff props state action)
  => { render :: Render eff props state action | spec }
  -> ReactComponent props
