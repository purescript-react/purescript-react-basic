module Container where

import Prelude

import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM as R
import ToggleButton (toggleButton)

component :: Component Unit
component = createComponent "Container"

toggleButtonContainer :: JSX
toggleButtonContainer = unit # makeStateless component \_ ->
  R.div
    { children:
        [ toggleButton { label: "A" }
        , toggleButton { label: "B" }
        ]
    }
