module Container where

import Prelude

import React.Basic (JSX, StatelessComponent, createStatelessComponent, makeStateless)
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

component :: StatelessComponent
component = createStatelessComponent "Container"
