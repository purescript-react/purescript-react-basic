module Counter where

import Prelude

import React.Basic (Component, JSX, StateUpdate(..), createComponent, make)
import React.Basic.DOM as R

type Props =
  { label :: String
  }

data Action
  = Increment

render :: Props -> JSX
render = make component
  { initialState = { counter: 0 }

  , update = \self -> case _ of
      Increment ->
        Update self.state { counter = self.state.counter + 1 }

  , render = \self ->
      R.button
        { onClick: self.capture_ Increment
        , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
        }
  }

component :: Component
component = createComponent "Counter"
