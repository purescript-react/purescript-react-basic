module ToggleButton where

import Prelude

import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.Events as Events

type ExampleProps =
  { on :: Boolean
  }

component :: ReactComponent ExampleProps
component = react { displayName: "ToggleButton", initialState, receiveProps, render }
  where
    initialState =
      { on: false }

    receiveProps props _ setState =
      setState _ { on = props.on }

    render _ state setState =
      R.button
        { onClick: Events.handler_ (setState \s -> s { on = not s.on })
        , children: [ R.text if state.on then "On" else "Off" ]
        }
