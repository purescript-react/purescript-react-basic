module ControlledInput where

import Prelude

import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Nullable (toMaybe)
import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.DOM.Events (targetValue, timeStamp)
import React.Basic.DOM.Events as Events

component :: ReactComponent {}
component = react
  { displayName: "Counter"
  , initialState: { value: "hello world", timeStamp: Nothing }
  , receiveProps: \_ _ _ -> pure unit
  , render: \_ state setState ->
      R.div_
        [ R.p_ [ R.input { onChange: Events.handler (Events.preventDefault >>> Events.merge { targetValue, timeStamp }) \{ timeStamp, targetValue } ->
                             setState \_ -> { value: fromMaybe "" (toMaybe targetValue)
                                            , timeStamp: Just timeStamp
                                            }
                         , value: state.value
                         }
               ]
        , R.p_ [ R.text ("Current value = " <> show state.value) ]
        , R.p_ (maybe [] (\ts -> [R.text ("Changed at: " <> show ts)]) state.timeStamp)
        ]
  }
