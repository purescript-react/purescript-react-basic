module React.Basic.Components.Async
  ( async
  , asyncWithLoader
  ) where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe)
import Effect.Aff (Aff, error, killFiber, launchAff, launchAff_)
import Effect.Class (liftEffect)
import React.Basic (Component, JSX, createComponent, empty, make)

component :: Component (Aff JSX)
component = createComponent "Async"

async :: Aff JSX -> JSX
async = asyncWithLoader empty

asyncWithLoader :: JSX -> Aff JSX -> JSX
asyncWithLoader loader = make component
  { initialState
  , render
  , didMount: launch
  -- , didUpdate: No! Implementing `didUpdate` breaks the
  --               Aff/Component lifecycle relationship.
  --               To update the Aff over time, wrap this
  --               component with `keyed`.
  , willUnmount: cleanup
  }
  where
    initialState =
      { jsx: Nothing
      , pendingFiber: pure unit
      }

    render self =
      fromMaybe loader self.state.jsx

    launch self = do
      fiber <- launchAff do
        jsx <- self.props
        liftEffect $ self.setState _ { jsx = Just jsx }
      self.setStateThen _ { jsx = Nothing, pendingFiber = fiber } do
        kill self.state.pendingFiber

    cleanup self =
      kill self.state.pendingFiber

    kill =
      launchAff_ <<< killFiber (error "Cancelled")
