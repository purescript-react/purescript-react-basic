module Actions where

import Prelude

import Effect.Console (log)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, make, runUpdate)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props
component = createComponent "Counter"

type Props =
  { label :: String
  }

data Action
  = Increment

actions :: Props -> JSX
actions = make component { initialState, render }
  where
    initialState = { counter: 0 }

    update self = case _ of
      Increment ->
        UpdateAndSideEffects
          (self.state { counter = self.state.counter + 1 })
          \{ state } -> log $ "Count: " <> show state.counter

    send = runUpdate update

    render self =
      R.button
        { onClick: capture_ $ send self Increment
        , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
        }
