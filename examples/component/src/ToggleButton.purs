module ToggleButton where

import Prelude

import Effect.Console (log)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, make, send)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props
component = createComponent "ToggleButton"

type Props =
  { label :: String
  }

data Action
  = Toggle

toggleButton :: Props -> JSX
toggleButton = make component
  { initialState:
      { on: false
      }

  , update: \self -> case _ of
      Toggle ->
        UpdateAndSideEffects
          self.state { on = not self.state.on }
          \nextSelf -> do
            log $ "next state: " <> show nextSelf.state

  , render: \self ->
      R.button
        { onClick: capture_ $ send self Toggle
        , children:
            [ R.text self.props.label
            , R.text if self.state.on
                        then " On"
                        else " Off"
            ]
        }
  }
