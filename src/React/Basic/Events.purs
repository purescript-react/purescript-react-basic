module React.Basic.Events
  ( EventHandler
  , SyntheticEvent
  , EventFn
  , unsafeEventFn
  , handler
  , merge
  , class Merge
  , mergeImpl
  ) where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (EffFn1, mkEffFn1)
import Data.Record (delete, get, insert)
import Data.Symbol (class IsSymbol, SProxy(SProxy))
import React.Basic (ReactFX)
import Type.Row (kind RowList, class RowToList, class RowLacks, RLProxy(..), Cons, Nil)

-- | An event handler, which receives a `SyntheticEvent` and performs some
-- | effects in return.
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit

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
newtype EventFn a b = EventFn (a -> b)

-- | Unsafely create an `EventFn`. This function should be avoided.
-- | Use the helper functions specific to your platform (such as `React.Basic.DOM.Events`).
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

-- | Merge multiple `EventFn` operations and collect their results.
-- |
-- | For example:
-- |
-- | ```purs
-- | input { onChange: handler (merge { targetValue, timeStamp })
-- |                     \{ targetValue, timeStamp } -> setState \_ -> { ... }
-- |       }
-- | ```
merge
  :: forall a fns fns_list r
   . RowToList fns fns_list
  => Merge fns_list fns a r
  => Record fns
  -> EventFn a (Record r)
merge = mergeImpl (RLProxy :: RLProxy fns_list)
