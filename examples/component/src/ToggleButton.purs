module ToggleButton where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic (ReactComponent, react)
import React.Basic.DOM as R

type ExampleProps =
  { on :: Boolean
  }

component :: ReactComponent ExampleProps
component = react
  { displayName: "ToggleButton"
  , initialState: { on: false }
  , receiveProps: \{ on } _ setState -> setState (const { on })
  , render: \_ { on } setState ->
      R.button { onClick: mkEffFn1 \_ -> setState \s -> { on: not s.on }
               , children: [ R.text if on then "On" else "Off" ]
               }
  }
