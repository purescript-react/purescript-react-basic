module ToggleButton where

import Prelude

import React.Basic as React
import React.Basic.DOM as R
import React.Basic.Events as Events

type Props =
  { label :: String
  }

component :: React.Component Props
component = React.component { displayName: "ToggleButton", initialState, receiveProps, render }
  where
    initialState =
      { on: false
      }

    receiveProps _ =
      pure unit

    render { props, state, setState } =
      R.button
        { onClick: Events.handler_ do
            setState \s -> s { on = not s.on }
        , children:
            [ R.text props.label
            , R.text if state.on
                       then " On"
                       else " Off"
            ]
        }
