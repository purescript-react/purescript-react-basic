-- | This module defines safe DOM event function and property accessors.

module React.Basic.DOM.Events
  ( capture
  , capture_
  , bubbles
  , cancelable
  , eventPhase
  , eventPhaseNone
  , eventPhaseCapturing
  , eventPhaseAtTarget
  , eventPhaseBubbling
  , isTrusted
  , nativeEvent
  , preventDefault
  , isDefaultPrevented
  , stopPropagation
  , isPropagationStopped
  , target
  , currentTarget
  , relatedTarget
  , targetChecked
  , targetValue
  , targetFiles
  , timeStamp
  , type_
  , key
  , code
  , char
  , location
  , repeat
  , locale
  , ctrlKey
  , shiftKey
  , altKey
  , metaKey
  , detail
  , screenX
  , screenY
  , clientX
  , clientY
  , button
  , buttons
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import React.Basic.Events (EventFn, EventHandler, SyntheticEvent, handler, unsafeEventFn)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Internal.Types (Event, EventTarget)
import Web.File.FileList (FileList)

-- | Create a capturing\* `EventHandler` to send an action when an event occurs. For
-- | more complicated event handlers requiring `Effect`, use `handler` from `React.Basic.Events`.
-- |
-- | __\*calls `preventDefault` and `stopPropagation`__
-- |
-- | __*See also:* `update`, `capture_`, `monitor`, `React.Basic.Events`__
capture :: forall a. EventFn SyntheticEvent a -> (a -> Effect Unit) -> EventHandler
capture eventFn = handler (preventDefault >>> stopPropagation >>> eventFn)

-- | Like `capture`, but for actions which don't need to extract information from the Event.
-- |
-- | __*See also:* `update`, `capture`, `monitor_`__
capture_ :: Effect Unit -> EventHandler
capture_ cb = capture identity \_ -> cb

-- | General event fields

bubbles :: EventFn SyntheticEvent Boolean
bubbles = unsafeEventFn \e -> (unsafeCoerce e).bubbles

cancelable :: EventFn SyntheticEvent Boolean
cancelable = unsafeEventFn \e -> (unsafeCoerce e).cancelable

eventPhase :: EventFn SyntheticEvent Int
eventPhase = unsafeEventFn \e -> (unsafeCoerce e).eventPhase

eventPhaseNone :: Int
eventPhaseNone = 0

eventPhaseCapturing :: Int
eventPhaseCapturing = 1

eventPhaseAtTarget :: Int
eventPhaseAtTarget = 2

eventPhaseBubbling :: Int
eventPhaseBubbling = 3

isTrusted :: EventFn SyntheticEvent Boolean
isTrusted = unsafeEventFn \e -> (unsafeCoerce e).isTrusted

nativeEvent :: EventFn SyntheticEvent Event
nativeEvent = unsafeEventFn \e -> (unsafeCoerce e).nativeEvent

preventDefault :: EventFn SyntheticEvent SyntheticEvent
preventDefault = unsafeEventFn \e -> unsafePerformEffect do
  _ <- (unsafeCoerce e).preventDefault
  pure e

isDefaultPrevented :: EventFn SyntheticEvent Boolean
isDefaultPrevented = unsafeEventFn \e -> unsafePerformEffect do
  (unsafeCoerce e).isDefaultPrevented

stopPropagation :: EventFn SyntheticEvent SyntheticEvent
stopPropagation = unsafeEventFn \e -> unsafePerformEffect do
  _ <- (unsafeCoerce e).stopPropagation
  pure e

isPropagationStopped :: EventFn SyntheticEvent Boolean
isPropagationStopped = unsafeEventFn \e -> unsafePerformEffect do
  (unsafeCoerce e).isPropagationStopped

target :: EventFn SyntheticEvent EventTarget
target = unsafeEventFn \e -> (unsafeCoerce e).target

currentTarget :: EventFn SyntheticEvent EventTarget
currentTarget = unsafeEventFn \e -> (unsafeCoerce e).currentTarget

relatedTarget :: EventFn SyntheticEvent (Maybe EventTarget)
relatedTarget = unsafeEventFn \e -> toMaybe (unsafeCoerce e).relatedTarget

targetChecked :: EventFn SyntheticEvent (Maybe Boolean)
targetChecked = unsafeEventFn \e -> toMaybe (unsafeCoerce e).target.checked

targetValue :: EventFn SyntheticEvent (Maybe String)
targetValue = unsafeEventFn \e -> toMaybe (unsafeCoerce e).target.value

targetFiles :: EventFn SyntheticEvent (Maybe FileList)
targetFiles = unsafeEventFn \e -> toMaybe (unsafeCoerce e).target.files

timeStamp :: EventFn SyntheticEvent Number
timeStamp = unsafeEventFn \e -> (unsafeCoerce e).timeStamp

type_ :: EventFn SyntheticEvent String
type_ = unsafeEventFn \e -> (unsafeCoerce e)."type"

-- | Keyboard event fields

key :: EventFn SyntheticEvent (Maybe String)
key = unsafeEventFn \e -> toMaybe (unsafeCoerce e).key

code :: EventFn SyntheticEvent (Maybe String)
code = unsafeEventFn \e -> toMaybe (unsafeCoerce e).code

char :: EventFn SyntheticEvent (Maybe String)
char = unsafeEventFn \e -> toMaybe (unsafeCoerce e).char

location :: EventFn SyntheticEvent (Maybe Number)
location = unsafeEventFn \e -> toMaybe (unsafeCoerce e).location

repeat :: EventFn SyntheticEvent (Maybe Boolean)
repeat = unsafeEventFn \e -> toMaybe (unsafeCoerce e).repeat

locale :: EventFn SyntheticEvent (Maybe String)
locale = unsafeEventFn \e -> toMaybe (unsafeCoerce e).locale

-- | Mouse event fields

detail :: EventFn SyntheticEvent (Maybe Int)
detail = unsafeEventFn \e -> toMaybe (unsafeCoerce e).detail

screenX :: EventFn SyntheticEvent (Maybe Number)
screenX = unsafeEventFn \e -> toMaybe (unsafeCoerce e).screenX

screenY :: EventFn SyntheticEvent (Maybe Number)
screenY = unsafeEventFn \e -> toMaybe (unsafeCoerce e).screenY

clientX :: EventFn SyntheticEvent (Maybe Number)
clientX = unsafeEventFn \e -> toMaybe (unsafeCoerce e).clientX

clientY :: EventFn SyntheticEvent (Maybe Number)
clientY = unsafeEventFn \e -> toMaybe (unsafeCoerce e).clientY

button :: EventFn SyntheticEvent (Maybe Int)
button = unsafeEventFn \e -> toMaybe (unsafeCoerce e).button

buttons :: EventFn SyntheticEvent (Maybe Int)
buttons = unsafeEventFn \e -> toMaybe (unsafeCoerce e).buttons

-- \ Shared keyboard + mouse fields

ctrlKey :: EventFn SyntheticEvent (Maybe Boolean)
ctrlKey = unsafeEventFn \e -> toMaybe (unsafeCoerce e).ctrlKey

shiftKey :: EventFn SyntheticEvent (Maybe Boolean)
shiftKey = unsafeEventFn \e -> toMaybe (unsafeCoerce e).shiftKey

altKey :: EventFn SyntheticEvent (Maybe Boolean)
altKey = unsafeEventFn \e -> toMaybe (unsafeCoerce e).altKey

metaKey :: EventFn SyntheticEvent (Maybe Boolean)
metaKey = unsafeEventFn \e -> toMaybe (unsafeCoerce e).metaKey
