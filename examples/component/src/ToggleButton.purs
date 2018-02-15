module ToggleButton where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic as R

type ExampleProps =
  { on :: Boolean
  }

type ExampleState =
  { on :: Boolean
  }

component :: R.ReactComponent ExampleProps
component = R.react
  { initialState: \{ on } -> { on }
  , setup: \_ _ _ -> pure unit
  , render: \_ { on } setState ->
      R.button { onClick: mkEffFn1 \_ -> setState { on: not on }
               }
               [ R.text if on then "On" else "Off" ]
  }
