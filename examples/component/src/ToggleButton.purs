module ToggleButton where

import Prelude

import Effect.Console (log)
import React.Basic (Component, JSX, createComponent, make, readState)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props
component = createComponent "ToggleButton"

type Props =
  { label :: String
  }

toggleButton :: Props -> JSX
toggleButton = make component
  { initialState:
      { on: false
      }

  , render: \self ->
      R.button
        { onClick: capture_ $
            self.setStateThen _ { on = not self.state.on } do
              nextState <- readState self
              log $ "next state: " <> show nextState
        , children:
            [ R.text self.props.label
            , R.text if self.state.on
                        then " On"
                        else " Off"
            ]
        }
  }
