module ToggleButton where

import Prelude

import React.Basic (JSX, Update, Component, StateUpdate(..), make, createComponent)
import React.Basic.DOM as R
import React.Basic.Events as Events

type Props =
  { label :: String
  }

data Action
  = Toggle

type State =
  { on :: Boolean
  }

initialState :: State
initialState =
  { on: false
  }

update :: Update Props State Action
update self = case _ of
  Toggle -> Update self.state { on = not self.state.on }

render :: Props -> JSX
render = make component initialState update \self ->
  R.button
    { onClick: Events.handler_ do self.send Toggle
    , children:
        [ R.text self.props.label
        , R.text if self.state.on
                    then " On"
                    else " Off"
        ]
    }

component :: Component Props State Action
component = createComponent "ToggleButton"
