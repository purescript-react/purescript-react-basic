module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (preventDefault, targetValue, timeStamp)
import React.Basic.Events as Events

component :: React.Component {}
component = React.component { displayName: "ControlledInput", initialState, receiveProps, render }
  where
    initialState =
      { value: "hello world"
      , timeStamp: Nothing
      }

    receiveProps _ =
      pure unit

    render { state, setState } =
      React.fragment
        [ R.input
            { onChange:
                Events.handler
                  (preventDefault >>> Events.merge { targetValue, timeStamp })
                  \{ timeStamp, targetValue } ->
                    setState _ { value = fromMaybe "" targetValue
                               , timeStamp = Just timeStamp
                               }
            , value: state.value
            }
        , R.p_ [ R.text ("Current value = " <> show state.value) ]
        , R.p_ [ R.text ("Changed at = " <> maybe "never" show state.timeStamp) ]
        ]
