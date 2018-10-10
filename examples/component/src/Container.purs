module Container where

import Prelude

import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM as R
import ToggleButton as ToggleButton

render :: JSX
render = unit # makeStateless component \_ ->
  R.div
    { children:
        [ ToggleButton.render { label: "A" }
        , ToggleButton.render { label: "B" }
        ]
    }

component :: Component
component = createComponent "Container"
