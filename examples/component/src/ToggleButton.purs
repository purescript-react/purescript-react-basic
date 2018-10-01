module ToggleButton where

import Prelude

import Effect.Console (log)
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

    render { props, state, setStateThen } =
      R.button
        { onClick: Events.handler_ do
            setStateThen (\s -> s { on = not s.on }) \nextState -> do
              log $ "nextState: " <> show nextState
        , children:
            [ R.text props.label
            , R.text if state.on
                       then " On"
                       else " Off"
            ]
        }
