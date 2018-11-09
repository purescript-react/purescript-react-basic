module React.Basic
  ( ComponentSpec
  , createComponent
  , Component
  , StateUpdate(..)
  , Self
  , send
  , sendAsync
  , capture
  , capture_
  , monitor
  , monitor_
  , readProps
  , readState
  , make
  , makeStateless
  , JSX
  , empty
  , keyed
  , fragment
  , element
  , elementKeyed
  , displayNameFromComponent
  , displayNameFromSelf
  , ReactComponent
  , ReactComponentInstance
  , toReactComponent
  ) where

import Prelude

import Data.Either (Either(..))
import Data.Function.Uncurried (Fn1, Fn2, runFn1, runFn2)
import Data.Nullable (Nullable, notNull, null)
import Effect (Effect)
import Effect.Aff (Aff, Error, runAff_)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import React.Basic.DOM.Events (preventDefault, stopPropagation)
import React.Basic.Events (EventFn, EventHandler, SyntheticEvent, handler)
import Type.Row (class Union)

-- | `ComponentSpec` represents a React-Basic component implementation.
-- |
-- | These are the properties your component definition may override
-- | with specific implementations. None are required to be overridden, unless
-- | an overridden function interacts with `state`, in which case `initialState`
-- | is required (the compiler enforces this). While you _can_ use `state` and
-- | dispatch actions without defining `update`, doing so doesn't make much sense
-- | and will emit a warning.
-- |
-- | - `initialState`
-- |   - The component's starting state.
-- |   - Avoid mirroring prop values in state.
-- | - `update`
-- |   - All state updates go through `update`.
-- |   - `update` is called when `send` is used to dispatch an action.
-- |   - State changes are described using `StateUpdate`. Only `Update` and `UpdateAndSideEffects` will cause rerenders and a call to `didUpdate`.
-- |   - Side effects requested are only invoked _after_ any corrosponding state update has completed its render cycle and the changes have been applied. This means it is safe to interact with the DOM in a side effect, for example.
-- | - `render`
-- |   - Takes a current snapshot of the component (`Self`) and converts it to renderable `JSX`.
-- | - `shouldUpdate`
-- |   - Can be useful for performance optimizations. Rarely necessary.
-- | - `didMount`
-- |   - The React component's `componentDidMount` lifecycle. Useful for initiating an action on first mount, such as fetching data from a server.
-- | - `didUpdate`
-- |   - The React component's `componentDidUpdate` lifecycle. Rarely necessary.
-- | - `willUnmount`
-- |   - The React component's `componentWillUnmount` lifecycle. Any subscriptions or timers created in `didMount` or `didUpdate` should be disposed of here.
-- |
-- | The component spec is generally not exported from your component
-- | module and this type is rarely used explicitly. `make` will validate whether
-- | your component's internal types line up.
-- |
-- | For example:
-- |
-- | ```purs
-- | component :: Component Props
-- | component = createComponent "Counter"
-- |
-- | type Props =
-- |   { label :: String
-- |   }
-- |
-- | data Action
-- |   = Increment
-- |
-- | counter :: Props -> JSX
-- | counter = make component
-- |   { initialState = { counter: 0 }
-- |
-- |   , update: \self action -> case action of
-- |       Increment ->
-- |         Update self.state { counter = self.state.counter + 1 }
-- |
-- |   , render: \self ->
-- |       R.button
-- |         { onClick: capture_ self Increment
-- |         , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
-- |         }
-- |   }
-- | ```
-- |
-- | This example component overrides `initialState`, `update`, and `render`.
-- |
-- | __*Note:* A `ComponentSpec` is *not* a valid React component by itself. If you would like to use
-- |   a React-Basic component from JavaScript, use `toReactComponent`.__
-- |
-- | __*See also:* `Component`, `ComponentSpec`, `make`, `makeStateless`__
type ComponentSpec props state action =
  ( initialState :: state
  , update       :: Self props state action -> action -> StateUpdate props state action
  , render       :: Self props state action -> JSX
  , shouldUpdate :: Self props state action -> props -> state -> Boolean
  , didMount     :: Self props state action -> Effect Unit
  , didUpdate    :: Self props state action -> Effect Unit
  , willUnmount  :: Self props state action -> Effect Unit
  )

-- | Creates a `Component` with a given Display Name.
-- |
-- | The resulting component spec is usually given the simplified `Component` type:
-- |
-- | ```purs
-- | component :: Component Props
-- | component = createComponent "Counter"
-- | ```
-- |
-- | This function should be used at the module level and considered side effecting.
-- | This is because React uses referential equality when deciding whether a new
-- | `JSX` tree is a valid update or if it needs to be replaced entirely
-- | (expensive and clears component state lower in the tree).
-- |
-- | __*Note:* A specific type for the props in `Component props` should always be chosen at this point.
-- |   It's technically possible to declare the component with `forall props. Component props`
-- |   but doing so is unsafe. Leaving the prop type open allows the use of a single `Component`
-- |   definition in multiple React-Basic components that may have different prop types. Because
-- |   component lifecycles are managed by React, it becomes possible for incompatible prop values to
-- |   be passed by React into lifecycle functions.__
-- |
-- | __*Note:* A `Component` is *not* a valid React component by itself. If you would like to use
-- |   a React-Basic component from JavaScript, use `toReactComponent`.__
-- |
-- | __*See also:* `Component`, `make`, `makeStateless`__
foreign import createComponent
  :: forall props
   . String
  -> Component props

-- | A simplified alias for `ComponentSpec`. This type is usually used to represent
-- | the default component type returned from `createComponent`.
-- type Component props = forall state action. ComponentSpec props state action

-- | Opaque component information for internal use.
-- |
-- | __*Note:* Never define a component with
-- |   a less specific type for `props` than its associated `ComponentSpec` and `make`
-- |   calls, as this can lead to unsafe interactions with React's lifecycle management.__
-- |
-- | __*For the curious:* This is the "class" React will use to render and
-- |   identify the component. It receives the `ComponentSpec` as a prop and knows
-- |   how to defer behavior to it. It requires very specific props and is not useful by
-- |   itself from JavaScript. For JavaScript interop, see `toReactComponent`.__
data Component props

-- | Used by the `update` function to describe the kind of state update and/or side
-- | effects desired.
-- |
-- | __*See also:* `ComponentSpec`, `capture`__
data StateUpdate props state action
  = NoUpdate
  | Update               state
  | SideEffects                (Self props state action -> Effect Unit)
  | UpdateAndSideEffects state (Self props state action -> Effect Unit)

-- | `Self` represents the component instance at a particular point in time.
-- |
-- | - `props`
-- |   - A snapshot of `props` taken when this `Self` was created.
-- | - `state`
-- |   - A snapshot of `state` taken when this `Self` was created.
-- | - `instance_`
-- |   - Unsafe escape hatch to the underlying component instance (`this` in the JavaScript React paradigm). Avoid as much as possible, but it's still frequently better than rewriting an entire component in JavaScript.
-- |
-- | __*See also:* `ComponentSpec`, `send`, `capture`, `readProps`, `readState`__
type Self props state action =
  { props     :: props
  , state     :: state
  , instance_ :: ReactComponentInstance
  }

-- | Dispatch an `action` into the component to be handled by `update`.
-- |
-- | __*See also:* `update`, `capture`__
send :: forall props state action. Self props state action -> action -> Effect Unit
send = runEffectFn2 (runFn1 send_ buildStateUpdate)

-- | Convenience function for sending an action when an `Aff` completes.
-- |
-- | __*Note:* Potential failure should be handled in the given `Aff` and converted
-- |   to an action, as the default error handler will simply log the   error to
-- |   the console.__
-- |
-- | __*See also:* `send`__
sendAsync
  :: forall props state action
   . Self props state action
  -> Aff action
  -> Effect Unit
sendAsync self work = runAff_ handle work
  where
    handle (Right action) = send self action
    handle (Left err) = runEffectFn2 warningFailedAsyncAction self err

-- | Create a capturing\* `EventHandler` to send an action when an event occurs. For
-- | more complicated event handlers requiring `Effect`, use `handler` from `React.Basic.Events`.
-- |
-- | __\*calls `preventDefault` and `stopPropagation`__
-- |
-- | __*See also:* `update`, `capture_`, `monitor`, `React.Basic.Events`__
capture :: forall props state action a. Self props state action -> EventFn SyntheticEvent a -> (a -> action) -> EventHandler
capture self eventFn = monitor self (preventDefault >>> stopPropagation >>> eventFn)

-- | Like `capture`, but for actions which don't need to extract information from the Event.
-- |
-- | __*See also:* `update`, `capture`, `monitor_`__
capture_ :: forall props state action. Self props state action -> action -> EventHandler
capture_ self action = capture self identity \_ -> action

-- | Like `capture`, but does not cancel the event.
-- |
-- | __*See also:* `update`, `capture`, `monitor\_`__
monitor :: forall props state action a. Self props state action -> EventFn SyntheticEvent a -> (a -> action) -> EventHandler
monitor self eventFn makeAction = handler eventFn \a -> send self (makeAction a)

-- | Like `capture_`, but does not cancel the event.
-- |
-- | __*See also:* `update`, `monitor`, `capture_`, `React.Basic.Events`__
monitor_ :: forall props state action. Self props state action -> action -> EventHandler
monitor_ self action = monitor self identity \_ -> action

-- | Read the most up to date `props` directly from the component instance
-- | associated with this `Self`.
-- |
-- | _Note: This function is for specific, asynchronous edge cases.
-- |   Generally, the `props` snapshot on `Self` is sufficient.
-- |
-- | __*See also:* `Self`__
foreign import readProps :: forall props state action. Self props state action -> Effect props

-- | Read the most up to date `state` directly from the component instance
-- | associated with this `Self`.
-- |
-- | _Note: This function is for specific, asynchronous edge cases.
-- |   Generally, the `state` snapshot on `Self` is sufficient.
-- |
-- | __*See also:* `Self`__
foreign import readState :: forall props state action. Self props state action -> Effect state

-- | Turn a `Component` and `ComponentSpec` into a usable render function.
-- | This is where you will want to provide customized implementations:
-- |
-- | ```purs
-- | component :: Component Props
-- | component = createComponent "Counter"
-- |
-- | type Props =
-- |   { label :: String
-- |   }
-- |
-- | data Action
-- |   = Increment
-- |
-- | counter :: Props -> JSX
-- | counter = make component
-- |   { initialState: { counter: 0 }
-- |
-- |   , update: \self action -> case action of
-- |       Increment ->
-- |         Update self.state { counter = self.state.counter + 1 }
-- |
-- |   , render: \self ->
-- |       R.button
-- |         { onClick: capture_ self Increment
-- |         , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
-- |         }
-- |   }
-- | ```
-- |
-- | __*See also:* `makeStateless`, `createComponent`, `Component`, `ComponentSpec`__
foreign import make
  :: forall spec spec_ props state action
   . Union spec spec_ (ComponentSpec props state action)
  => Component props
  -> { render :: Self props state action -> JSX | spec }
  -> props
  -> JSX

-- | Makes stateless component definition slightly less verbose:
-- |
-- | ```purs
-- | component :: Component Props
-- | component = createComponent "Xyz"
-- |
-- | myComponent :: Props -> JSX
-- | myComponent = makeStateless component \props -> JSX
-- | ```
-- |
-- | __*Note:* The only difference between a stateless React-Basic component and
-- |   a plain `props -> JSX` function is the presense of the component name
-- |   in React's dev tools and error stacks. It's just a conceptual boundary.
-- |   If this isn't important simply write a `props -> JSX` function.__
-- |
-- | __*See also:* `make`, `createComponent`, `Component`, `ComponentSpec`__
makeStateless
  :: forall props
   . Component props
  -> (props -> JSX)
  -> props
  -> JSX
makeStateless component render =
  make component { render: \self -> render self.props }

-- | Represents rendered React VDOM (the result of calling `React.createElement`
-- | in JavaScript).
-- |
-- | `JSX` is a `Monoid`:
-- |
-- | - `append`
-- |   - Merge two `JSX` nodes using `React.Fragment`.
-- | - `mempty`
-- |   - The `empty` node; renders nothing.
-- |
-- | __*Hint:* Many useful utility functions already exist for Monoids. For example,
-- |   `guard` can be used to conditionally render a subtree of components.__
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

-- | An empty `JSX` node. This is often useful when you would like to conditionally
-- | show something, but you don't want to (or can't) modify the `children` prop
-- | on the parent node.
-- |
-- | __*See also:* `JSX`, Monoid `guard`__
foreign import empty :: JSX

-- | Apply a React key to a subtree. React-Basic usually hides React's warning about
-- | using `key` props on components in an Array, but keys are still important for
-- | any dynamic lists of child components.
-- |
-- | __*See also:* React's documentation regarding the special `key` prop__
keyed :: String -> JSX -> JSX
keyed = runFn2 keyed_

-- | Render an Array of children without a wrapping component.
-- |
-- | __*See also:* `JSX`__
foreign import fragment :: Array JSX -> JSX

-- | Create a `JSX` node from a `ReactComponent`, by providing the props.
-- |
-- | This function is for non-React-Basic React components, such as those
-- | imported from FFI.
-- |
-- | __*See also:* `ReactComponent`, `elementKeyed`__
element
  :: forall props
   . ReactComponent { | props }
  -> { | props }
  -> JSX
element = runFn2 element_

-- | Create a `JSX` node from a `ReactComponent`, by providing the props and a key.
-- |
-- | This function is for non-React-Basic React components, such as those
-- | imported from FFI.
-- |
-- | __*See also:* `ReactComponent`, `element`, React's documentation regarding the special `key` prop__
elementKeyed
  :: forall props
   . ReactComponent { | props }
  -> { key :: String | props }
  -> JSX
elementKeyed = runFn2 elementKeyed_

-- | Retrieve the Display Name from a `ComponentSpec`. Useful for debugging and improving
-- | error messages in logs.
-- |
-- | __*See also:* `displayNameFromSelf`, `createComponent`__
foreign import displayNameFromComponent
  :: forall props
   . Component props
  -> String

-- | Retrieve the Display Name from a `Self`. Useful for debugging and improving
-- | error messages in logs.
-- |
-- | __*See also:* `displayNameFromComponent`, `createComponent`__
foreign import displayNameFromSelf
  :: forall props state action
   . Self props state action
  -> String

-- | Represents a traditional React component. Useful for JavaScript interop and
-- | FFI. For example:
-- |
-- | ```purs
-- | foreign import ComponentRequiringJSHacks :: ReactComponent { someProp :: String }
-- | ```
-- |
-- | __*See also:* `element`, `toReactComponent`__
data ReactComponent props

-- | An opaque representation of a React component's instance (`this` in the JavaScript
-- | React paradigm). It exists as an escape hatch to unsafe behavior. Use it with
-- | caution.
data ReactComponentInstance

-- | Convert a React-Basic `ComponentSpec` to a JavaScript-friendly React component.
-- | This function should only be used for JS interop and not normal React-Basic usage.
-- |
-- | __*Note:* Like `createComponent`, `toReactComponent` is side effecting in that
-- |   it creates a "class" React will see as unique each time it's called. Lift
-- |   any usage up to the module level, usage in `render` or any other function,
-- |   and applying any type classes to the `props`.__
-- |
-- | __*See also:* `ReactComponent`__
foreign import toReactComponent
  :: forall spec spec_ jsProps props state action
   . Union spec spec_ (ComponentSpec props state action)
  => ({ | jsProps } -> props)
  -> Component props
  -> { render :: Self props state action -> JSX | spec }
  -> ReactComponent { | jsProps }


-- |
-- | Internal utility or FFI functions
-- |

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
  Update state_ ->
    { state:   notNull state_
    , effects: null
    }
  SideEffects effects ->
    { state:   null
    , effects: notNull effects
    }
  UpdateAndSideEffects state_ effects ->
    { state:   notNull state_
    , effects: notNull effects
    }

foreign import send_
  :: forall props state action
   . Fn1
       (StateUpdate props state action
         -> { state   :: Nullable state
            , effects :: Nullable (Self props state action -> Effect Unit)
            })
       (EffectFn2
         (Self props state action)
         action
         Unit)

foreign import keyed_ :: Fn2 String JSX JSX

foreign import element_
  :: forall props
   . Fn2 (ReactComponent { | props }) { | props } JSX

foreign import elementKeyed_
  :: forall props
   . Fn2 (ReactComponent { | props }) { key :: String | props } JSX

foreign import warningDefaultUpdate
  :: forall props state action
   . EffectFn2
       (Self props state action)
       action
       Unit

foreign import warningUnmountedComponentAction
  :: forall props state action
   . EffectFn2
       (Self props state action)
       action
       Unit

foreign import warningFailedAsyncAction
  :: forall props state action
   . EffectFn2
       (Self props state action)
       Error
       Unit
