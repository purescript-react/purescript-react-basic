module Container where

import Prelude

import React.Basic (ReactComponent, reactComponent)
import React.Basic.DOM as R
import ToggleButton as ToggleButton

component :: ReactComponent Unit
component = reactComponent
  { displayName: "Container"
  , initialState: unit
  , receiveProps: \_ _ _ -> pure unit
  , render: \_ _ setState ->
      R.div { children: [ ToggleButton.component { on: true }
                        , ToggleButton.component { on: false }
                        ]
            }
  }
