module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import React.Basic (JSX, Update, Component, StateUpdate(..), make, createComponent)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (preventDefault, targetValue, timeStamp)
import React.Basic.Events as Events

type Props = {}

type State =
  { value :: String
  , timestamp :: Maybe Number
  }

initialState :: State
initialState =
  { value: "hello world"
  , timestamp: Nothing
  }

data Action
  = ValueChanged String Number

update :: Update Props State Action
update self = case _ of
  ValueChanged value timestamp ->
    Update self.state { value = value, timestamp = Just timestamp }

render :: Props -> JSX
render = make component initialState update \{ props, state, send } ->
  React.fragment
    [ R.input
        { onChange:
            Events.handler
              (preventDefault >>> Events.merge { targetValue, timeStamp })
              \{ timeStamp, targetValue } ->
                send $ ValueChanged (fromMaybe "" targetValue) timeStamp
        , value: state.value
        }
    , R.p_ [ R.text ("Current value = " <> show state.value) ]
    , R.p_ [ R.text ("Changed at = " <> maybe "never" show state.timestamp) ]
    ]

component :: Component Props State Action
component = createComponent "ControlledInput"
