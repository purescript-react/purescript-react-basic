module ReducerComponent where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic as R

data Action
  = Increment
  | Decrement

type State =
  { counter :: Int
  }

reducer :: R.Reducer () Action State
reducer Increment state _ = pure $ state { counter = state.counter + 1 }
reducer Decrement state _ = pure $ state { counter = state.counter - 1 }

counter :: R.ReactComponent Unit
counter =
  R.react
    { initialState: \_ -> { counter: 0 }
    , reducer
    , render: \_ { counter } send ->
        R.div {}
          [ R.text ("Counter: " <> show counter)
          , R.button { onClick: mkEffFn1 \_ -> send Increment } [ R.text "Increment" ]
          , R.button { onClick: mkEffFn1 \_ -> send Decrement } [ R.text "Decrement" ]
          ]
    }
