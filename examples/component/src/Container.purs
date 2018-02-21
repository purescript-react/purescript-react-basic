module Container where

import Prelude

import React.Basic as R
import ToggleButton as ToggleButton

component :: R.ReactComponent Unit
component = R.react
  { initialState: unit
  , receiveProps: \_ _ _ -> pure unit
  , render: \_ _ setState ->
      R.div { } [ R.component ToggleButton.component { on: true }
                , R.component ToggleButton.component { on: false }
                ]
  }
