module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Effect.Console (logShow)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, make)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (targetValue, timeStamp)
import React.Basic.Events (merge)

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

  , render = render
  }
  where
    render self =
      React.fragment
        [ R.input
            { onChange:
                self.capture
                  (merge { targetValue, timeStamp })
                  \{ timeStamp, targetValue } -> ValueChanged (fromMaybe "" targetValue) timeStamp
            , value: self.state.value
            }
        , R.p_ [ R.text ("Current value = " <> show self.state.value) ]
        , R.p_ [ R.text ("Changed at = " <> maybe "never" show self.state.timestamp) ]
        ]


component :: Component
component = createComponent "ControlledInput"
