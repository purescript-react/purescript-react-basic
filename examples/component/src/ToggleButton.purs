module ToggleButton where

import Prelude

import Effect.Console (log)
import React.Basic (Component, JSX, StateUpdate(..), createComponent, make)
import React.Basic.DOM as R

type Props =
  { label :: String
  }

data Action
  = Toggle

render :: Props -> JSX
render = make component
  { initialState =
      { on: false
      }

  , update = \self -> case _ of
      Toggle ->
        UpdateAndSideEffects
          self.state { on = not self.state.on }
          \nextSelf -> do
            log $ "next state: " <> show nextSelf.state

  , render = \self ->
      R.button
        { onClick: self.capture identity $ const Toggle
        , children:
            [ R.text self.props.label
            , R.text if self.state.on
                        then " On"
                        else " Off"
            ]
        }
  }

component :: Component
component = createComponent "ToggleButton"
