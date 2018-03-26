module Container where

import React.Basic (ReactComponent, createElement, stateless)
import React.Basic.DOM as R
import ToggleButton as ToggleButton

component :: ReactComponent {}
component = stateless
  { displayName: "Container"
  , render: \_ ->
      R.div { children: [ createElement ToggleButton.component { on: true }
                        , createElement ToggleButton.component { on: false }
                        ]
            }
  }
