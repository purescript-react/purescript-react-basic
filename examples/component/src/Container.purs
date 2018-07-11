module Container where

import React.Basic (ReactComponent, createElement, stateless)
import React.Basic.DOM as R
import ToggleButton (toggleButton)

component :: ReactComponent {}
component = stateless { displayName: "Container", render }
  where
    render _ =
      R.div
        { children:
            [ createElement toggleButton { on: true }
            , createElement toggleButton { on: false }
            ]
        }
