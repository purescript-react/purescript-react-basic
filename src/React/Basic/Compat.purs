-- | This module is deprecated and may be removed in the next
-- | major version.
module React.Basic.Compat
  ( Component
  , component
  , stateless
  , module CompatibleTypes
  ) where

import Prelude

import Effect (Effect)
import React.Basic (ReactComponent, StateUpdate(..), createComponent, send, toReactComponent)
import React.Basic (JSX, element, elementKeyed, empty, fragment, keyed) as CompatibleTypes

type Component = ReactComponent

-- | Supports a common subset of the v2 API to ease the upgrade process
component
  :: forall props state
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps :: { props :: { | props }, state :: { | state }, setState :: ({ | state } -> { | state }) -> Effect Unit } -> Effect Unit
     , render :: { props :: { | props }, state :: { | state }, setState :: ({ | state } -> { | state }) -> Effect Unit } -> CompatibleTypes.JSX
     }
  -> ReactComponent { | props }
component { displayName, initialState, receiveProps, render } =
  toReactComponent identity (createComponent displayName)
    { initialState: initialState
    , didMount: receiveProps <<< selfToLegacySelf
    , didUpdate: receiveProps <<< selfToLegacySelf
    , update: \self stateUpdate -> Update (stateUpdate self.state)
    , render: render <<< selfToLegacySelf
    }
  where
    selfToLegacySelf self@{ props, state } =
      { props
      , state
      , setState: send self
      }

-- | Supports a common subset of the v2 API to ease the upgrade process
stateless
  :: forall props
   . { displayName :: String
     , render :: { | props } -> CompatibleTypes.JSX
     }
  -> ReactComponent { | props }
stateless { displayName, render } =
  toReactComponent identity (createComponent displayName)
    { render: \self -> render self.props
    }
