module Counter where

import Prelude

import React.Basic (JSX, Update, Component, StateUpdate(..), make, createComponent)
import React.Basic.DOM as R
import React.Basic.Events as Events

type Props =
  { label :: String
  }

data Action
  = Increment

type State =
  { counter :: Int
  }

initialState :: State
initialState =
  { counter: 0
  }

update :: Update Props State Action
update self = case _ of
  Increment -> Update self.state { counter = self.state.counter + 1 }

render :: Props -> JSX
render = make component initialState update \self ->
  R.button
    { onClick: Events.handler_ do self.send Increment
    , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
    }

component :: Component Props State Action
component = createComponent "Counter"
