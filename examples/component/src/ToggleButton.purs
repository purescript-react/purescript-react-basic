module ToggleButton where

import Prelude

import React.Basic (Component, JSX, StateUpdate(..), createComponent, make)
import React.Basic.DOM as R
import React.Basic.Events as Events

type Props =
  { label :: String
  }

data Action
  = Toggle

render :: Props -> JSX
render = make component
  { initialState =
      { on: false
      }

  , update = \self -> case _ of
      Toggle -> Update self.state { on = not self.state.on }

  , render = \self ->
      R.button
        { onClick: Events.handler_ do self.send Toggle
        , children:
            [ R.text self.props.label
            , R.text if self.state.on
                        then " On"
                        else " Off"
            ]
        }
  }

component :: Component
component = createComponent "ToggleButton"
