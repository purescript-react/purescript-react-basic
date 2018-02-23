module Counter where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic (ReactComponent, react)
import React.Basic.DOM as R

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- Create a component by passing a record to the `react` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
component :: ReactComponent ExampleProps
component = react
  { displayName: "Counter"
  , initialState: { counter: 0 }
  , receiveProps: \_ _ _ -> pure unit
  , render: \{ label } { counter } setState ->
      R.button { onClick: mkEffFn1 \_ -> do
                            setState \s -> { counter: s.counter + 1 }
               , children: [ R.text (label <> ": " <> show counter) ]
               }
  }
