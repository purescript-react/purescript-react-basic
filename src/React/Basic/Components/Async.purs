module React.Basic.Components.Async
  ( async
  , asyncWithLoader
  ) where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe)
import Effect.Aff (Aff, Fiber, error, killFiber, launchAff, launchAff_)
import Effect.Class (liftEffect)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, empty, make, send)

component :: Component (Aff JSX)
component = createComponent "Async"

data FetchAction
  = ReplaceFiber (Fiber Unit)
  | UpdateJSX JSX

async :: Aff JSX -> JSX
async = asyncWithLoader empty

asyncWithLoader :: JSX -> Aff JSX -> JSX
asyncWithLoader loader = make component
  { initialState
  , update
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

    update { props, state } = case _ of
      ReplaceFiber newFiber ->
        UpdateAndSideEffects
          state { jsx = Nothing, pendingFiber = newFiber }
          \_ -> kill state.pendingFiber

      UpdateJSX jsx ->
        Update
          state { jsx = Just jsx }

    render self =
      fromMaybe loader self.state.jsx

    launch self = do
      fiber <- launchAff do
        jsx <- self.props
        liftEffect $ send self $ UpdateJSX jsx
      send self $ ReplaceFiber fiber

    cleanup self =
      kill self.state.pendingFiber

    kill =
      launchAff_ <<< killFiber (error "Cancelled")
