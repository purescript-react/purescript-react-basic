module React.Basic.Compat
  ( Component
  , component
  , stateless
  , module React.Basic
  ) where

import Prelude

import Effect (Effect)
import React.Basic (JSX, ReactComponent, Self, StateUpdate(..), ComponentSpec, createComponent, element, elementKeyed, empty, fragment, fragmentKeyed, make, makeStateless, toReactComponent)

type Component = ReactComponent

-- | Supports a common subset of the v2 API to ease the upgrade process
component
  :: forall props state
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps :: { props :: { | props }, state :: { | state }, setState :: ({ | state } -> { | state }) -> Effect Unit } -> Effect Unit
     , render :: { props :: { | props }, state :: { | state }, setState :: ({ | state } -> { | state }) -> Effect Unit } -> JSX
     }
  -> ReactComponent { | props }
component { displayName, initialState, receiveProps, render } =
  toReactComponent (createComponent displayName)
    { initialState = initialState
    , didMount = receiveProps <<< selfToLegacySelf
    , didUpdate = receiveProps <<< selfToLegacySelf
    , update = \self stateUpdate -> Update (stateUpdate self.state)
    , render = render <<< selfToLegacySelf
    }
  where
    selfToLegacySelf { props, state, send } =
      { props
      , state
      , setState: send
      }

-- | Supports a common subset of the v2 API to ease the upgrade process
stateless
  :: forall props
   . { displayName :: String
     , render :: { | props } -> JSX
     }
  -> ReactComponent { | props }
stateless { displayName, render } =
  toReactComponent (createComponent displayName)
    { render = \self -> render self.props
    }
