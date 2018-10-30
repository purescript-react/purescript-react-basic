module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import React.Basic (Component, JSX, StateUpdate(..), capture, createComponent, make)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (targetValue, timeStamp)
import React.Basic.Events (merge)

component :: Component Props
component = createComponent "ControlledInput"

type Props = Unit

data Action
  = ValueChanged String Number

controlledInput :: Props -> JSX
controlledInput = make component
  { initialState =
      { value: "hello world"
      , timestamp: Nothing
      }

  , update = \self -> case _ of
      ValueChanged value timestamp ->
        Update self.state
          { value = value
          , timestamp = Just timestamp
          }

  , render = \self ->
      React.fragment
        [ R.input
            { onChange:
                capture self (merge { targetValue, timeStamp })
                  \{ timeStamp, targetValue } -> ValueChanged (fromMaybe "" targetValue) timeStamp
            , value: self.state.value
            }
        , R.p_ [ R.text ("Current value = " <> show self.state.value) ]
        , R.p_ [ R.text ("Changed at = " <> maybe "never" show self.state.timestamp) ]
        ]
  }
