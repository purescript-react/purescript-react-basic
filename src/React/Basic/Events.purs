module React.Basic.Events
  ( EventHandler
  , SyntheticEvent
  , EventFn
  , unsafeEventFn
  , handler
  , handler_
  , syntheticEvent
  , merge
  , class Merge
  , mergeImpl
  ) where

import Prelude
import Data.Symbol (class IsSymbol, SProxy(SProxy))
import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Prim.Row as Row
import Prim.RowList (kind RowList, class RowToList, Cons, Nil)
import Record (delete, get, insert)
import Type.Data.RowList (RLProxy(..))

-- | An event handler, which receives a `SyntheticEvent` and performs some
-- | effects in return.
type EventHandler
  = EffectFn1 SyntheticEvent Unit

-- | Event data that we receive from React.
foreign import data SyntheticEvent :: Type

-- | Encapsulates a safe event operation. `EventFn`s can be composed
-- | to perform multiple operations.
-- |
-- | For example:
-- |
-- | ```purs
-- | input { onChange: handler (preventDefault >>> targetValue)
-- |                     \value -> setState \_ -> { value }
-- |       }
-- | ```
newtype EventFn a b
  = EventFn (a -> b)

-- | Unsafely create an `EventFn`. This function should be avoided as it can allow
-- | a `SyntheticEvent` to escape its scope. Accessing a React event's properties is only
-- | valid in a synchronous event callback.
-- |
-- | Instead, use the helper functions specific to your platform, such as `React.Basic.DOM.Events`.
unsafeEventFn :: forall a b. (a -> b) -> EventFn a b
unsafeEventFn = EventFn

derive newtype instance semigroupoidBuilder :: Semigroupoid EventFn

derive newtype instance categoryBuilder :: Category EventFn

-- | Create an `EventHandler`, given an `EventFn` and a callback.
-- |
-- | For example:
-- |
-- | ```purs
-- | input { onChange: handler targetValue
-- |                     \value -> setState \_ -> { value }
-- |       }
-- | ```
handler :: forall a. EventFn SyntheticEvent a -> (a -> Effect Unit) -> EventHandler
handler (EventFn fn) cb = mkEffectFn1 $ fn >>> cb

-- | Create an `EventHandler` which discards the `SyntheticEvent`.
-- |
-- | For example:
-- |
-- | ```purs
-- | input { onChange: handler_ (setState \_ -> { value })
-- |       }
-- | ```
handler_ :: Effect Unit -> EventHandler
handler_ = mkEffectFn1 <<< const

syntheticEvent :: EventFn SyntheticEvent SyntheticEvent
syntheticEvent = identity

class Merge (rl :: RowList) fns a r | rl -> fns, rl a -> r where
  mergeImpl :: RLProxy rl -> Record fns -> EventFn a (Record r)

instance mergeNil :: Merge Nil () a () where
  mergeImpl _ _ = EventFn \_ -> {}

instance mergeCons ::
  ( IsSymbol l
  , Row.Cons l (EventFn a b) fns_rest fns
  , Row.Cons l b r_rest r
  , Row.Lacks l fns_rest
  , Row.Lacks l r_rest
  , Merge rest fns_rest a r_rest
  ) =>
  Merge (Cons l (EventFn a b) rest) fns a r where
  mergeImpl _ fns =
    EventFn \a ->
      let
        EventFn inner = mergeImpl (RLProxy :: RLProxy rest) (delete l fns)

        EventFn f = get l fns
      in
        insert l (f a) (inner a)
    where
    l = SProxy :: SProxy l

-- | Merge multiple `EventFn` operations and collect their results.
-- |
-- | For example:
-- |
-- | ```purs
-- | input { onChange: handler (merge { targetValue, timeStamp })
-- |                     \{ targetValue, timeStamp } -> setState \_ -> { ... }
-- |       }
-- | ```
merge ::
  forall a fns fns_list r.
  RowToList fns fns_list =>
  Merge fns_list fns a r =>
  Record fns ->
  EventFn a (Record r)
merge = mergeImpl (RLProxy :: RLProxy fns_list)
