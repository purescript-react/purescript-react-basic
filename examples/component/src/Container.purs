module Container where

import Prelude

import React.Basic (ReactComponent, createElement, react)
import React.Basic.DOM as R
import ToggleButton as ToggleButton

component :: ReactComponent Unit
component = react
  { displayName: "Container"
  , initialState: unit
  , receiveProps: \_ _ _ -> pure unit
  , render: \_ _ setState ->
      R.div { children: [ createElement ToggleButton.component { on: true }
                        , createElement ToggleButton.component { on: false }
                        ]
            }
  }
