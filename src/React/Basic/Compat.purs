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
import React.Basic (ReactComponent, createComponent, toReactComponent)
import React.Basic (JSX, Self, element, elementKeyed, empty, fragment, keyed) as CompatibleTypes

type Component = ReactComponent

-- | Supports a common subset of the v2 API to ease the upgrade process
component
  :: forall props state
   . { displayName :: String
     , initialState :: {| state }
     , receiveProps :: CompatibleTypes.Self {| props } {| state } -> Effect Unit
     , render :: CompatibleTypes.Self {| props } {| state } -> CompatibleTypes.JSX
     }
  -> ReactComponent {| props }
component { displayName, initialState, receiveProps, render } =
  toReactComponent identity (createComponent displayName)
    { initialState: initialState
    , didMount: receiveProps
    , didUpdate: const <<< receiveProps
    , render: render
    }

-- | Supports a common subset of the v2 API to ease the upgrade process
stateless
  :: forall props
   . { displayName :: String
     , render :: {| props } -> CompatibleTypes.JSX
     }
  -> ReactComponent {| props }
stateless { displayName, render } =
  toReactComponent identity (createComponent displayName)
    { render: \self -> render self.props
    }
