module Counter where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic as R

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- The internal state of the component
type ExampleState =
  { counter :: Int
  }

-- Create a component by passing a record to the `react` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
component :: R.ReactComponent ExampleProps
component = R.react
  { initialState: { counter: 0 }
  , receiveProps: \_ _ _ -> pure unit
  , render: \{ label } { counter } setState ->
      R.button { onClick: mkEffFn1 \_ -> do
                            setState { counter: counter + 1 }
               }
               [ R.text (label <> ": " <> show counter) ]
  }
