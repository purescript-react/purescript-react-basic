module Handler where

import Prelude

import Data.Int as Int
import Data.Maybe (maybe)
import Effect (Effect)
import React.Basic (Component, JSX, createComponent, make, runUpdate)
import React.Basic as React
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture, targetValue)

component :: Component Props
component = createComponent "Form"

type Props = {
  onChange :: State -> Effect Unit
  }

type State =
  { xCount :: Int
  , yCount :: Int
  }

data Action
  = UpdateXCount Int
  | UpdateYCount Int

form :: Props -> JSX
form props =
  make component { initialState, render } props

  where
   initialState =
     { xCount: 10
     , yCount: 18
     }

   update self = case _ of
     UpdateXCount xCount ->
       React.UpdateAndSideEffects (self.state { xCount = xCount })
       \{ state } -> self.props.onChange state

     UpdateYCount yCount ->
       React.UpdateAndSideEffects (self.state { yCount = yCount })
       \{ state } -> self.props.onChange state

   send = runUpdate update

   render self =
     React.fragment
     [ R.input
       { onChange:
         capture targetValue
         \v -> v >>= Int.fromString # maybe (pure unit) (send self <<< UpdateXCount)
       , value: show self.state.xCount
       , type: "number"
       }
     , R.input
       { onChange:
         capture targetValue
         \v -> v >>= Int.fromString # maybe (pure unit) (send self <<< UpdateYCount)
       , value: show self.state.yCount
       , type: "number"
       }
     , R.p_ [ R.text $ "(x: " <> show self.state.xCount <> ", y: " <> show self.state.yCount <> ")" ]
     ]
