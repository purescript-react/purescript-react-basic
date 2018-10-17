module React.Basic
  ( Component
  , ComponentSpec
  , ComponentType
  , JSX
  , Update
  , StateUpdate(..)
  , Self
  , LimitedSelf
  , ReactComponent
  , ReactComponentInstance
  , make
  , makeStateless
  , asyncEffects
  , createComponent
  , empty
  , keyed
  , fragment
  , fragmentKeyed
  , element
  , elementKeyed
  , toReactComponent
  , displayNameFromComponentSpec
  , displayNameFromSelf
  ) where

import Prelude

import Data.Either (Either(..))
import Data.Function.Uncurried (Fn2, Fn5, runFn2, runFn5)
import Data.Nullable (Nullable, notNull, null)
import Effect (Effect)
import Effect.Aff (Aff, runAff_)
import Effect.Console (error)
import React.Basic.DOM.Events (preventDefault, stopPropagation)
import React.Basic.Events (EventFn, EventHandler, SyntheticEvent, handler)
import Unsafe.Coerce (unsafeCoerce)

-- | A virtual DOM element.
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

data ComponentType props state action

type ComponentSpec props state initialState action =
  { "$$type"     :: ComponentType props state action
  , initialState :: initialState
  , shouldUpdate :: LimitedSelf props state -> props -> state -> Boolean
  , didMount     :: Self props state action -> Effect Unit
  , didUpdate    :: Self props state action -> Effect Unit
  , willUnmount  :: LimitedSelf props state -> Effect Unit
  , update       :: Update props state action
  , render       :: Self props state action -> JSX
  }

type Component = forall props state action. ComponentSpec props state Unit action

type Update props state action
   = Self props state action
  -> action
  -> StateUpdate props state action

data StateUpdate props state action
  = NoUpdate
  | Update               state
  | SideEffects                (Self props state action -> Effect Unit)
  | UpdateAndSideEffects state (Self props state action -> Effect Unit)

type Self props state action =
  { props     :: props
  , state     :: state
  , readProps :: Effect props
  , readState :: Effect state
  , send      :: action -> Effect Unit
  -- | Create a capturing* `EventHandler` to send an action when an event occurs.
  -- |
  -- | *capturing: prevent default and stop propagation
  , capture   :: forall a. EventFn SyntheticEvent a -> (a -> action) -> EventHandler
  , capture_  ::           action -> EventHandler
  -- | Like `capture`, but does not cancel the event.
  , monitor   :: forall a. EventFn SyntheticEvent a -> (a -> action) -> EventHandler
  , monitor_  ::           action -> EventHandler

  -- | Unsafe, but still frequently better than rewriting a
  -- | whold component in JS
  , instance_ :: ReactComponentInstance
  }

type LimitedSelf props state =
  { props :: props
  , state :: state
  }

data ReactComponentInstance

-- | Convenience function for sending an action asynchronously.
-- |
-- | Note: potential failure should be handled and converted to an
-- |   action, as the default error handler will simply log the
-- |   error to the console.
asyncEffects
  :: forall props state action
   . (Self props state action -> Aff action)
  -> Self props state action
  -> Effect Unit
asyncEffects work self = runAff_ handle (work self)
  where
    handle (Right action) = self.send action
    handle (Left err) = do
      error $ "An async action failed in a " <> displayNameFromSelf self <> " component."
      -- Unsafely coercing to preserve browser console
      -- error features such as linked stack traces
      error (unsafeCoerce err)

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

-- | Turn a `ComponentSpec` into a usable render function.
-- | This is usually where you will want to provide customized
-- | implementations:
-- |
-- | ```purs
-- | type Props =
-- |   { label :: String
-- |   }
-- |
-- | data Action
-- |   = Increment
-- |
-- | render :: Props -> JSX
-- | render = make component
-- |   { initialState = { counter: 0 }
-- |
-- |   , update = \self action -> case action of
-- |       Increment ->
-- |         Update self.state { counter = self.state.counter + 1 }
-- |
-- |   , render = \self ->
-- |       R.button
-- |         { onClick: Events.handler_ do self.send Increment
-- |         , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
-- |         }
-- |   }
-- |
-- | component :: Component
-- | component = createComponent "Counter"
-- | ```
foreign import make
  :: forall props state action
   . ComponentSpec props state state action
  -> props
  -> JSX

-- | Helper to make stateless component definition slightly
-- | less verbose:
-- |
-- | ```purs
-- | render = makeStateless component \props -> JSX
-- |
-- | component = createStatelessComponent "Xyz"
-- | ```
makeStateless
  :: forall props
   . ComponentSpec props Unit Unit Unit
  -> (props -> JSX)
  -> props
  -> JSX
makeStateless component render =
  make component { render = \self -> render self.props }

data ReactComponent props

createComponent
  :: forall props state action
   . String
  -> ComponentSpec props state Unit action
createComponent =
  runFn5
    createComponent_
    NoUpdate
    buildStateUpdate
    handler
    ((preventDefault >>> stopPropagation) >>> _)
    identity

foreign import createComponent_
  :: forall props state action
   . Fn5
      (StateUpdate props state action)
      (StateUpdate props state action
        -> { state   :: Nullable state
           , effects :: Nullable (Self props state action -> Effect Unit)
           })
      -- handler
      (forall a. EventFn SyntheticEvent a -> (a -> Effect Unit) -> EventHandler)
      -- composeCancelEventFn
      (forall a. EventFn SyntheticEvent a -> EventFn SyntheticEvent a)
      -- identityEventFn
      (EventFn SyntheticEvent SyntheticEvent)
      (String -> ComponentSpec props state Unit action)

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
elementKeyed
  :: forall props
   . ReactComponent { | props }
  -> { key :: String | props }
  -> JSX
elementKeyed = runFn2 elementKeyed_

foreign import element_
  :: forall props
   . Fn2 (ReactComponent { | props }) { | props } JSX

foreign import elementKeyed_
  :: forall props
   . Fn2 (ReactComponent { | props }) { key :: String | props } JSX

foreign import toReactComponent
  :: forall props state action
   . ComponentSpec { | props } state state action
  -> ReactComponent { | props }

foreign import displayNameFromComponentSpec
  :: forall props state initialState action
   . ComponentSpec props state initialState action
  -> String

foreign import displayNameFromSelf
  :: forall props state action
   . Self props state action
  -> String
