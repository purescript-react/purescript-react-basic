module ControlledInput where

import Prelude

import Data.Maybe (fromMaybe)
import Data.Nullable (toMaybe)
import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.DOM.Events (handler, targetValue)

component :: ReactComponent {}
component = react
  { displayName: "Counter"
  , initialState: { value: "hello world" }
  , receiveProps: \_ _ _ -> pure unit
  , render: \_ state setState ->
      R.div_
        [ R.input { onChange: handler targetValue \value ->
                      setState \_ -> { value: fromMaybe "" (toMaybe value) }
                  , value: state.value
                  }
        ]
  }
