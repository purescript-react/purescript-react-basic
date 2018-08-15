module Container where

import React.Basic as React
import React.Basic.DOM as R
import ToggleButton as ToggleButton

component :: React.Component {}
component = React.stateless { displayName: "Container", render }
  where
    render _ =
      R.div
        { children:
            [ React.element ToggleButton.component { label: "A" }
            , React.element ToggleButton.component { label: "B" }
            ]
        }
