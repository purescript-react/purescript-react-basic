module OptionalProps where

import Prelude

import Prim.Row as Row
import React.Basic (Component, JSX, createComponent, make)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)
import Record (merge)

component :: Component Props
component = createComponent "OptionalProps"

type PropsRow =
  ( label :: String
  , count :: Int
  )

type Props = { | PropsRow }

defaultProps :: Props
defaultProps =
  { label: "Increment"
  , count: 0
  }

type State =
  { counter :: Int
  }

counter ::
  forall attrs attrs_.
  Row.Union attrs PropsRow attrs_ =>
  Row.Nub attrs_ PropsRow =>
  { | attrs } -> JSX
counter props =
  make component { initialState, render } $ props'

  where
    props' = merge props defaultProps

    initialState = { counter: props'.count }

    render self =
      R.button
        { onClick: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
        , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
        }
