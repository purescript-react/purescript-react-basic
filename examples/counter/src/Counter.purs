module Counter where

import Prelude

import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props
component = createComponent "Counter"

type Props =
  { label :: String
  }

counter :: Props -> JSX
counter = make component { initialState, render }
  where
    initialState = { counter: 0 }

    render self =
      R.button
        { onClick: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
        , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
        }
