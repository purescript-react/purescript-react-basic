module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import React.Basic (Component, JSX, createComponent, make)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture, targetValue, timeStamp)
import React.Basic.Events (merge)

component :: Component Props
component = createComponent "ControlledInput"

type Props = Unit

controlledInput :: Props -> JSX
controlledInput = make component
  { initialState:
      { value: "hello world"
      , timestamp: Nothing
      }

  , render: \self ->
      React.fragment
        [ R.input
            { onChange:
                capture (merge { targetValue, timeStamp })
                  \{ timeStamp, targetValue } ->
                    self.setState _
                      { value = fromMaybe "" targetValue
                      , timestamp = Just timeStamp
                      }
            , value: self.state.value
            }
        , R.p_ [ R.text ("Current value = " <> show self.state.value) ]
        , R.p_ [ R.text ("Changed at = " <> maybe "never" show self.state.timestamp) ]
        ]
  }
