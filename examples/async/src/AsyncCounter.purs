module AsyncCounter where

import Prelude

import Effect.Aff (Milliseconds(..), delay)
import Effect.Class (liftEffect)
import Effect.Console (log)
import React.Basic (Component, JSX, StateUpdate(..), capture_, createComponent, fragment, keyed, make)
import React.Basic.Components.Async (asyncWithLoader)
import React.Basic.DOM as R

component :: Component Props
component = createComponent "AsyncCounter"

type Props =
  { label :: String
  }

data Action
  = Increment

asyncCounter :: Props -> JSX
asyncCounter = make component { initialState, update, render }
  where
    initialState = { counter: 0 }

    update self = case _ of
      Increment ->
        Update self.state { counter = self.state.counter + 1 }

    render self =
      fragment
        [ R.p_ [ R.text "Notes:" ]
        , R.ol_
            [ R.li_ [ R.text "The two counts should never be out of sync" ]
            , R.li_ [ R.text "\"done\" should only be logged to the console once for any loading period (in-flight requests get cancelled as the next request starts)" ]
            ]
        , R.button
            { onClick: capture_ self Increment
            , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
            }
        , R.text " "
        , keyed (show self.state.counter) $
            asyncWithLoader (R.text "Loading...") do
              liftEffect $ log "start"
              delay $ Milliseconds 2000.0
              liftEffect $ log "done"
              pure $ R.text $ "Done: " <> show self.state.counter
        ]


