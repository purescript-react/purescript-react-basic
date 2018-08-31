module React.Basic where

import Prelude

import Data.Function.Uncurried (Fn1, Fn2, Fn8, runFn2, runFn8)
import Data.Nullable (Nullable, notNull, null)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)

-- | A virtual DOM element.
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

data Component props state action

type StatelessComponent props = Component props Void Void

type Update props state action
   = Self props state action
  -> action
  -> StateUpdate props state action

data StateUpdate props state action
  = NoUpdate
  | Update state
  | SideEffects (Self props state action -> Effect Unit)
  | UpdateAndSideEffects state (Self props state action -> Effect Unit)

buildStateUpdate
  :: forall props state action
   . StateUpdate props state action
  -> { state :: Nullable state
     , effects :: Nullable (Self props state action -> Effect Unit)
     }
buildStateUpdate = case _ of
  NoUpdate ->
    { state:   null
    , effects: null
    }
  Update state ->
    { state:   notNull state
    , effects: null
    }
  SideEffects effects ->
    { state:   null
    , effects: notNull effects
    }
  UpdateAndSideEffects state effects ->
    { state:   notNull state
    , effects: notNull effects
    }

make
  :: forall props state action
   . Eq props
  => Eq state
  => Component props state action
  -> state
  -> (Update props state action)
  -> (Self props state action -> JSX)
  -> props
  -> JSX
make = runFn8 make_ buildStateUpdate eq eq

makeStateless
  :: forall props
   . Eq props
  => Component props Void Void
  -> (props -> JSX)
  -> props
  -> JSX
makeStateless component render =
  runFn8 make_
    (\_ -> { state: null, effects: null })
    eq
    (\_ _ -> true)
    component
    voidState
    (\_ _ -> NoUpdate)
    (render <<< _.props)

-- | Represents the state of a stateless component.
foreign import voidState :: Void

type Self props state action =
  { props :: props
  , state :: state
  , readProps :: Effect props
  , readState :: Effect state
  , send :: action -> Effect Unit
  }

foreign import make_ :: forall props state action.
  Fn8
    (StateUpdate props state action
      -> { state :: Nullable state
         , effects :: Nullable (Self props state action -> Effect Unit)
         })
    (props -> props -> Boolean)
    (state -> state -> Boolean)
    (Component props state action)
    state
    (Update props state action)
    (Self props state action -> JSX)
    props
    JSX

data ReactComponent props

data ReactComponentInstance

foreign import createComponent :: forall props state action. Fn1 String (Component props state action)

-- | An empty node. This is often useful when you would like to conditionally
-- | show something, but you don't want to (or can't) modify the `children` prop
-- | on the parent node.
empty :: JSX
empty = unsafeCoerce false

-- | Apply a React key to a sub-tree.
keyed :: String -> JSX -> JSX
keyed = runFn2 keyed_

-- | Render an Array of children without a wrapping component.
foreign import fragment :: Array JSX -> JSX

-- | Render an Array of children without a wrapping component.
-- |
-- | Provide a key when dynamically rendering multiple fragments along side
-- | each other.
fragmentKeyed :: String -> Array JSX -> JSX
fragmentKeyed = runFn2 fragmentKeyed_

foreign import fragmentKeyed_ :: Fn2 String (Array JSX) JSX

foreign import keyed_ :: Fn2 String JSX JSX

-- | Create a `JSX` node from a React component, by providing the props.
element
  :: forall props
   . ReactComponent { | props }
  -> { | props }
  -> JSX
element = runFn2 element_

-- | Like `element`, plus a `key` for rendering components in a dynamic list.
-- | For more information see: https://reactjs.org/docs/reconciliation.html#keys
elementKeyed :: forall props. ReactComponent { | props } -> { key :: String | props } -> JSX
elementKeyed = runFn2 elementKeyed_

foreign import element_ :: forall props. Fn2 (ReactComponent { | props }) { | props } JSX

foreign import elementKeyed_ :: forall props. Fn2 (ReactComponent { | props }) { key :: String | props } JSX
