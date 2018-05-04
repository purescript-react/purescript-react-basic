module Counter where

import Prelude

import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.Events as Events

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- Create a component by passing a record to the `react` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
component :: ReactComponent ExampleProps
component = react { displayName: "Counter", initialState, receiveProps, render }
  where
    initialState =
      { counter: 0
      }

    receiveProps _ _ _ =
      pure unit

    render props state setState =
      R.button
        { onClick: Events.handler_ do
                     setState \s -> s { counter = s.counter + 1 }
        , children: [ R.text (props.label <> ": " <> show state.counter) ]
        }
