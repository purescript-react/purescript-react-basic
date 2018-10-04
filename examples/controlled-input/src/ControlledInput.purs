module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, make)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (preventDefault, targetValue, timeStamp)
import React.Basic.Events as Events

type Props = {}

data Action
  = ValueChanged String Number

render :: Props -> JSX
render = make component
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
                Events.handler
                  (preventDefault >>> Events.merge { targetValue, timeStamp })
                  \{ timeStamp, targetValue } ->
                    self.send $
                      ValueChanged (fromMaybe "" targetValue) timeStamp
            , value: self.state.value
            }
        , R.p_ [ R.text ("Current value = " <> show self.state.value) ]
        , R.p_ [ R.text ("Changed at = " <> maybe "never" show self.state.timestamp) ]
        ]
  }

component :: Component
component = createComponent "ControlledInput"
