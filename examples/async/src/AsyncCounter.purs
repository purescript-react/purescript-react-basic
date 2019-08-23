module AsyncCounter where

import Prelude

import Effect.Aff (Milliseconds(..), delay)
import Effect.Class (liftEffect)
import Effect.Console (log)
import React.Basic (Component, JSX, createComponent, fragment, keyed, make)
import React.Basic.Components.Async (asyncWithLoader)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture_)

component :: Component Props
component = createComponent "AsyncCounter"

type Props =
  { label :: String
  }

asyncCounter :: Props -> JSX
asyncCounter = make component { initialState, render }
  where
    initialState = 0

    render self =
      fragment
        [ R.p_ [ R.text "Notes:" ]
        , R.ol_
            [ R.li_ [ R.text "The two counts should never be out of sync" ]
            , R.li_ [ R.text "\"done\" should only be logged to the console once for any loading period (in-flight requests get cancelled as the next request starts)" ]
            ]
        , R.button
            { onClick: capture_ $ self.setState (_ + 1)
            , children: [ R.text (self.props.label <> ": " <> show self.state) ]
            }
        , R.text " "
        , keyed (show self.state) $
            asyncWithLoader (R.text "Loading...") do
              liftEffect $ log "start"
              delay $ Milliseconds 1000.0
              liftEffect $ log "done"
              pure $ R.text $ "Done: " <> show self.state
        ]


