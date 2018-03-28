-- | This module defines safe DOM event function and property accessors.

module React.Basic.DOM.Events
  ( DOMNode
  , DOMEvent
  , bubbles
  , cancelable
  , currentTarget
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
  , targetChecked
  , targetValue
  , timeStamp
  , type_
  ) where

import Data.Maybe (Maybe)
import Data.Nullable (toMaybe)
import React.Basic.Events (EventFn, SyntheticEvent, unsafeEventFn)
import Unsafe.Coerce (unsafeCoerce)

-- | An _actual_ DOM node (not a virtual DOM element!)
foreign import data DOMNode :: Type

-- | The underlying browser Event.
foreign import data DOMEvent :: Type

bubbles :: EventFn SyntheticEvent Boolean
bubbles = unsafeEventFn \e -> (unsafeCoerce e).bubbles

cancelable :: EventFn SyntheticEvent Boolean
cancelable = unsafeEventFn \e -> (unsafeCoerce e).cancelable

currentTarget :: EventFn SyntheticEvent DOMNode
currentTarget = unsafeEventFn \e -> (unsafeCoerce e).currentTarget

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

nativeEvent :: EventFn SyntheticEvent DOMEvent
nativeEvent = unsafeEventFn \e -> (unsafeCoerce e).nativeEvent

preventDefault :: EventFn SyntheticEvent SyntheticEvent
preventDefault = unsafeEventFn unsafePreventDefault

foreign import unsafePreventDefault :: SyntheticEvent -> SyntheticEvent

isDefaultPrevented :: EventFn SyntheticEvent Boolean
isDefaultPrevented = unsafeEventFn unsafeIsDefaultPrevented

foreign import unsafeIsDefaultPrevented :: SyntheticEvent -> Boolean

stopPropagation :: EventFn SyntheticEvent SyntheticEvent
stopPropagation = unsafeEventFn unsafeStopPropagation

foreign import unsafeStopPropagation :: SyntheticEvent -> SyntheticEvent

isPropagationStopped :: EventFn SyntheticEvent Boolean
isPropagationStopped = unsafeEventFn unsafeIsPropagationStopped

foreign import unsafeIsPropagationStopped :: SyntheticEvent -> Boolean

target :: EventFn SyntheticEvent DOMNode
target = unsafeEventFn \e -> (unsafeCoerce e).target

targetChecked :: EventFn SyntheticEvent (Maybe Boolean)
targetChecked = unsafeEventFn \e -> toMaybe (unsafeCoerce e).target.checked

targetValue :: EventFn SyntheticEvent (Maybe String)
targetValue = unsafeEventFn \e -> toMaybe (unsafeCoerce e).target.value

timeStamp :: EventFn SyntheticEvent Number
timeStamp = unsafeEventFn \e -> (unsafeCoerce e).timeStamp

type_ :: EventFn SyntheticEvent String
type_ = unsafeEventFn \e -> (unsafeCoerce e)."type"
