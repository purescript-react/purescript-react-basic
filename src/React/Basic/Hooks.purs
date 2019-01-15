-- | *Warning:* This hooks API is *experimental* and relies on alpha-release
-- | React versions. It's here to allow experimentation while we get feedback
-- | on the API and wait for an official React release which supports hooks.
-- | For more info on hooks, see [React's documentation](https://reactjs.org/docs/hooks-intro.html).
-- |
-- | It's also recommended while using this module to use PureScript's new
-- | "qualified do" syntax. It's available now on `master` but is not in a
-- | PureScript release yet.
module React.Basic.Hooks
  ( CreateComponent
  , component
  , memo
  , UseState
  , useState
  , UseEffect
  , useEffect
  , UseLayoutEffect
  , useLayoutEffect
  , UseReducer
  , useReducer
  , UseRef
  , readRef
  , readRefMaybe
  , writeRef
  , renderRef
  , renderRefMaybe
  , useRef
  , UseContext
  , Context
  , useContext
  , createContext
  , contextProvider
  , UseMemo
  , useMemo
  , Key
  , class ToKey
  , toKey
  , unsafeToKey
  , Render
  , bind
  , discard
  , pure
  , module React.Basic.Hooks.Internal
  , module Data.Tuple
  , module Data.Tuple.Nested
  ) where

import Prelude hiding (bind,discard,pure)

import Control.Applicative.Indexed (class IxApplicative, ipure)
import Control.Apply.Indexed (class IxApply)
import Control.Bind.Indexed (class IxBind, ibind)
import Data.Function.Uncurried (Fn2, mkFn2)
import Data.Functor.Indexed (class IxFunctor)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe, toNullable)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (tuple2, (/\))
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3, mkEffectFn1, runEffectFn1, runEffectFn2, runEffectFn3)
import Prelude (bind, pure) as Prelude
import React.Basic.Hooks.Internal (ReactComponent, JSX, Ref, empty, keyed, fragment, element, elementKeyed, displayName)
import React.Basic.Hooks.Internal (unsafeReactComponent) as Internal
import Unsafe.Coerce (unsafeCoerce)

-- | Alias for convenience. Creating components is effectful because
-- | React uses the function instance as the component's "identity"
-- | or "type".
type CreateComponent props = Effect (ReactComponent props)

-- | Create a React component given a display name and render function.
component
  :: forall hooks props
   . String
  -> (props -> Render Unit hooks JSX)
  -> CreateComponent props
component name renderFn =
  let c = Internal.unsafeReactComponent (mkEffectFn1 (\props -> case renderFn props of Render a -> a))
   in runEffectFn2 unsafeSetDisplayName name c

memo
  :: forall props
   . CreateComponent props
  -> CreateComponent props
memo = flip Prelude.bind (runEffectFn1 memo_)

foreign import data UseState :: Type -> Type -> Type

useState
  :: forall hooks state
   . state
  -> Render hooks (UseState state hooks) (Tuple state ((state -> state) -> Effect Unit))
useState initialState = Render do
  runEffectFn2 useState_ (mkFn2 Tuple) initialState

foreign import data UseEffect :: Type -> Type

useEffect
  :: forall hooks
   . Array Key
  -> Effect (Effect Unit)
  -> Render hooks (UseEffect hooks) Unit
useEffect keys effect = Render (runEffectFn2 useEffect_ effect keys)

foreign import data UseLayoutEffect :: Type -> Type

useLayoutEffect
  :: forall hooks
   . Array Key
  -> Effect (Effect Unit)
  -> Render hooks (UseLayoutEffect hooks) Unit
useLayoutEffect keys effect = Render (runEffectFn2 useLayoutEffect_ effect keys)

foreign import data UseReducer :: Type -> Type -> Type -> Type

useReducer
  :: forall hooks state action
   . ToKey state
  => state
  -> (state -> action -> state)
  -> Render hooks (UseReducer state action hooks) (Tuple state (action -> Effect Unit))
useReducer initialState reducer = Render do
  runEffectFn3 useReducer_
    (mkFn2 Tuple)
    (mkFn2 reducer)
    initialState

foreign import data UseRef :: Type -> Type -> Type

useRef
  :: forall hooks a
   . a
  -> Render hooks (UseRef a hooks) (Ref a)
useRef initialValue = Render do
  runEffectFn1 useRef_ initialValue

readRef :: forall a. Ref a -> Effect a
readRef = runEffectFn1 readRef_

readRefMaybe :: forall a. Ref (Nullable a) -> Effect (Maybe a)
readRefMaybe a = map toMaybe (readRef a)

writeRef :: forall a. Ref a -> a -> Effect Unit
writeRef = runEffectFn2 writeRef_

renderRef :: forall hooks a. Ref a -> Render hooks hooks a
renderRef ref = Render (readRef ref)

renderRefMaybe :: forall hooks a. Ref (Nullable a) -> Render hooks hooks (Maybe a)
renderRefMaybe a = Render (readRefMaybe a)

foreign import data UseContext :: Type -> Type -> Type

foreign import data Context :: Type -> Type

useContext
  :: forall hooks a
   . Context a
  -> Render hooks (UseContext a hooks) (Maybe a)
useContext context = Render (map toMaybe (runEffectFn1 useContext_ context))

createContext :: forall a. a -> Effect (Context a)
createContext = runEffectFn1 createContext_

contextProvider :: forall a. Context a -> a -> JSX -> JSX
contextProvider context a child = element (contextProvider_ context) { value: a, children: child }

foreign import data UseMemo :: Type -> Type -> Type

useMemo
  :: forall hooks a
   . Array Key
  -> (Unit -> a)
  -> Render hooks (UseMemo a hooks) a
useMemo keys factory = Render (runEffectFn2 useMemo_ factory keys)

-- | Keys represent values React uses to check for changes.
-- | This is done using JavaScript's reference equality (`===`),
-- | so complicated types may want to implement `ToKey` so that
-- | it returns a primative like a `String`. A timestamp appended
-- | to a unique ID, for example. Less strict cases can implement
-- | `ToKey` using `unsafeToKey`, while some extreme cases may
-- | need a hashing or stringifying mechanism.
data Key

class ToKey a where
  toKey :: a -> Key

unsafeToKey :: forall a. a -> Key
unsafeToKey = unsafeCoerce

instance trString :: ToKey String where
  toKey = unsafeToKey

instance trInt :: ToKey Int where
  toKey = unsafeToKey

instance trNumber :: ToKey Number where
  toKey = unsafeToKey

instance trBoolean :: ToKey Boolean where
  toKey = unsafeToKey

instance trRecord :: ToKey (Record a) where
  toKey = unsafeToKey

instance trArray :: ToKey (Array a) where
  toKey = unsafeToKey

instance trNullable :: ToKey (Nullable a) where
  toKey = unsafeToKey

instance trMaybe :: ToKey (Maybe a) where
  toKey a = toKey (toNullable a)

-- | Render represents the effects allowed within a React component's
-- | body, i.e. during "render". This includes hooks and ends with
-- | returning JSX (see `pure`), but does not allow arbitrary side
-- | effects.
newtype Render x y a = Render (Effect a)

instance ixFunctorRender :: IxFunctor Render where
  imap f (Render a) = Render (map f a)

instance ixApplyRender :: IxApply Render where
  iapply (Render f) (Render a) = Render (apply f a)

instance ixBindRender :: IxBind Render where
  ibind (Render m) f = Render (Prelude.bind m \a -> case f a of Render b -> b)

instance ixApplicativeRender :: IxApplicative Render where
  ipure a = Render (Prelude.pure a)

bind :: forall a b x y z m. IxBind m => m x y a -> (a -> m y z b) -> m x z b
bind = ibind

discard :: forall a b x y z m. IxBind m => m x y a -> (a -> m y z b) -> m x z b
discard = ibind

pure :: forall a x m. IxApplicative m => a -> m x x a
pure = ipure



-- |
-- | Internal utility or FFI functions
-- |

foreign import memo_
  :: forall props
   . EffectFn1
       (ReactComponent props)
       (ReactComponent props)

foreign import unsafeSetDisplayName
  :: forall props
   . EffectFn2 String (ReactComponent props) (ReactComponent props)

foreign import useState_
  :: forall state
   . EffectFn2
       (forall a b. Fn2 a b (Tuple a b))
       state
       (Tuple state ((state -> state) -> Effect Unit))

foreign import useEffect_
  :: EffectFn2
       (Effect (Effect Unit))
       (Array Key)
       Unit

foreign import useLayoutEffect_
  :: EffectFn2
       (Effect (Effect Unit))
       (Array Key)
       Unit

foreign import useReducer_
  :: forall state action
   . EffectFn3
       (forall a b. Fn2 a b (Tuple a b))
       (Fn2 state action state)
       state
       (Tuple state (action -> Effect Unit))

foreign import readRef_
  :: forall a
   . EffectFn1
       (Ref a)
       a

foreign import writeRef_
  :: forall a
   . EffectFn2
       (Ref a)
       a
       Unit

foreign import useRef_
  :: forall a
   . EffectFn1
       a
       (Ref a)

foreign import useContext_
  :: forall a
   . EffectFn1
       (Context a)
       (Nullable a)

foreign import createContext_
  :: forall a
   . EffectFn1
       a
       (Context a)

foreign import contextProvider_
  :: forall a
   . Context a
  -> ReactComponent { value :: a, children :: JSX }

foreign import useMemo_
  :: forall a
   . EffectFn2
       (Unit -> a)
       (Array Key)
       a
