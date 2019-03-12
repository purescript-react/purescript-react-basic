-- | These helper components register and unregister event callbacks
-- | using React's the lifecycle callbacks. They're useful for
-- | declaratively defining global behavior which is associated with
-- | a particular component being mounted without having to wire
-- | all that lifecycle logic up manually.
-- |
-- | For example:
-- |
-- | ```purs
-- | render self =
-- |   R.div
-- |     { className: "dropdown-wrapper"
-- |     , children:
-- |         [ dropdownButton
-- |         , guard showDropdown $
-- |             windowEvent
-- |               { eventType: EventType "click"
-- |               , options: defaultOptions
-- |               , handler: \_ -> send self CloseDropdown
-- |               }
-- |               dropdownMenu
-- |         ]
-- |     }
-- | ```
module React.Basic.DOM.Components.GlobalEvents
  ( EventHandlerOptions
  , defaultOptions
  , globalEvent
  , globalEvents
  , windowEvent
  , windowEvents
  ) where

import Prelude

import Data.Foldable (foldr)
import Effect (Effect)
import React.Basic (JSX, ReactComponent, element)
import Web.Event.Event (EventType)
import Web.Event.Internal.Types (Event, EventTarget)

type EventHandlerOptions =
  { capture :: Boolean
  , once :: Boolean
  , passive :: Boolean
  }

defaultOptions :: EventHandlerOptions
defaultOptions =
  { capture: false
  , once: false
  , passive: false
  }

foreign import globalEvent_
  :: ReactComponent
       { target :: EventTarget
       , eventType :: EventType
       , handler :: Event -> Effect Unit
       , options :: EventHandlerOptions
       , child :: JSX
       }

globalEvent
  :: EventTarget
  -> { eventType :: EventType
     , options :: EventHandlerOptions
     , handler :: Event -> Effect Unit
     }
  -> JSX
  -> JSX
globalEvent target { eventType, options, handler } child =
  element globalEvent_
    { target
    , eventType
    , handler
    , options
    , child
    }

globalEvents
  :: EventTarget
  -> Array
       { eventType :: EventType
       , options :: EventHandlerOptions
       , handler :: Event -> Effect Unit
       }
  -> JSX
  -> JSX
globalEvents target = flip (foldr (globalEvent target))

windowEvents
  :: Array
       { eventType :: EventType
       , options :: EventHandlerOptions
       , handler :: Event -> Effect Unit
       }
  -> JSX
  -> JSX
windowEvents = globalEvents unsafeWindowEventTarget

windowEvent
  :: { eventType :: EventType
     , options :: EventHandlerOptions
     , handler :: Event -> Effect Unit
     }
  -> JSX
  -> JSX
windowEvent = windowEvents <<< pure

foreign import unsafeWindowEventTarget :: EventTarget

-- | Hide "unused ffi export" warning.
-- | The export is required to prevent
-- | PS' bundler from stripping it out.
foreign import _passiveSupported :: Void
