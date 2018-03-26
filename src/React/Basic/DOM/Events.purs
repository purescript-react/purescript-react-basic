-- | This module defines safe event function and property accessors.

module React.Basic.DOM.Events
  ( EventHandler
  , SyntheticEvent
  , DOMNode
  , DOMEvent
  , EventFn
  , handler
  , merge
  , bubbles
  , cancelable
  , currentTarget
  , defaultPrevented
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
  , class Merge
  , mergeImpl
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (EffFn1, mkEffFn1)
import Data.Nullable (Nullable)
import Data.Record (delete, get, insert)
import Data.Symbol (class IsSymbol, SProxy(SProxy))
import React.Basic (ReactFX)
import Type.Row (kind RowList, class RowToList, class RowLacks, RLProxy(..), Cons, Nil)
import Unsafe.Coerce (unsafeCoerce)

-- | An event handler, which receives a `SyntheticEvent` and performs some
-- | effects in return.
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit

-- | Event data that we receive from React.
foreign import data SyntheticEvent :: Type

-- | An _actual_ DOM node (not a virtual DOM element!)
foreign import data DOMNode :: Type

-- | The underlying browser Event
foreign import data DOMEvent :: Type

newtype EventFn a b = EventFn (a -> b)

derive newtype instance semigroupoidBuilder :: Semigroupoid EventFn
derive newtype instance categoryBuilder :: Category EventFn

handler :: forall a. EventFn SyntheticEvent a -> (a -> Eff (react :: ReactFX) Unit) -> EventHandler
handler (EventFn fn) cb = mkEffFn1 $ fn >>> cb

class Merge (rl :: RowList) fns a r | rl -> fns, rl a -> r where
  mergeImpl :: RLProxy rl -> Record fns -> EventFn a (Record r)

instance mergeNil :: Merge Nil () a () where
  mergeImpl _ _ = EventFn \_ -> {}

instance mergeCons
    :: ( IsSymbol l
       , RowCons l (EventFn a b) fns_rest fns
       , RowCons l b r_rest r
       , RowLacks l fns_rest
       , RowLacks l r_rest
       , Merge rest fns_rest a r_rest
       )
    => Merge (Cons l (EventFn a b) rest) fns a r
  where
    mergeImpl _ fns = EventFn \a ->
        let EventFn inner = mergeImpl (RLProxy :: RLProxy rest) (delete l fns)
            EventFn f = get l fns
         in insert l (f a) (inner a)
      where
        l = SProxy :: SProxy l

merge
  :: forall a fns fns_list r
   . RowToList fns fns_list
  => Merge fns_list fns a r
  => Record fns
  -> EventFn a (Record r)
merge = mergeImpl (RLProxy :: RLProxy fns_list)

bubbles :: EventFn SyntheticEvent Boolean
bubbles = EventFn \e -> (unsafeCoerce e).bubbles

cancelable :: EventFn SyntheticEvent Boolean
cancelable = EventFn \e -> (unsafeCoerce e).cancelable

currentTarget :: EventFn SyntheticEvent DOMNode
currentTarget = EventFn \e -> (unsafeCoerce e).currentTarget

eventPhase :: EventFn SyntheticEvent Int
eventPhase = EventFn \e -> (unsafeCoerce e).eventPhase

eventPhaseNone :: Int
eventPhaseNone = 0

eventPhaseCapturing :: Int
eventPhaseCapturing = 1

eventPhaseAtTarget :: Int
eventPhaseAtTarget = 2

eventPhaseBubbling :: Int
eventPhaseBubbling = 3

isTrusted :: EventFn SyntheticEvent Boolean
isTrusted = EventFn \e -> (unsafeCoerce e).isTrusted

nativeEvent :: EventFn SyntheticEvent DOMEvent
nativeEvent = EventFn \e -> (unsafeCoerce e).nativeEvent

preventDefault :: EventFn SyntheticEvent SyntheticEvent
preventDefault = EventFn unsafePreventDefault

foreign import unsafePreventDefault :: SyntheticEvent -> SyntheticEvent

isDefaultPrevented :: EventFn SyntheticEvent Boolean
isDefaultPrevented = EventFn unsafeIsDefaultPrevented

foreign import unsafeIsDefaultPrevented :: SyntheticEvent -> Boolean

stopPropagation :: EventFn SyntheticEvent SyntheticEvent
stopPropagation = EventFn unsafeStopPropagation

foreign import unsafeStopPropagation :: SyntheticEvent -> SyntheticEvent

isPropagationStopped :: EventFn SyntheticEvent Boolean
isPropagationStopped = EventFn unsafeIsPropagationStopped

foreign import unsafeIsPropagationStopped :: SyntheticEvent -> Boolean

target :: EventFn SyntheticEvent DOMNode
target = EventFn \e -> (unsafeCoerce e).target

targetChecked :: EventFn SyntheticEvent (Nullable Boolean)
targetChecked = EventFn \e -> (unsafeCoerce e).target.checked

targetValue :: EventFn SyntheticEvent (Nullable String)
targetValue = EventFn \e -> (unsafeCoerce e).target.value

timeStamp :: EventFn SyntheticEvent Number
timeStamp = EventFn \e -> (unsafeCoerce e).timeStamp

type_ :: EventFn SyntheticEvent String
type_ = EventFn \e -> (unsafeCoerce e)."type"
