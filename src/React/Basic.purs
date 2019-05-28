module React.Basic
  ( ComponentSpec
  , createComponent
  , Component
  , Self
  , readProps
  , readState
  , StateUpdate(..)
  , runUpdate
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

import Data.Function.Uncurried (Fn2, mkFn2, runFn2)
import Data.Nullable (Nullable, notNull, null)
import Effect (Effect)
import Effect.Uncurried (EffectFn3, runEffectFn3)
import Prim.Row (class Union)

-- | `ComponentSpec` represents a React-Basic component implementation.
-- |
-- | These are the properties your component definition may override
-- | with specific implementations. None are required to be overridden, unless
-- | an overridden function interacts with `state`, in which case `initialState`
-- | is required (the compiler enforces this).
-- |
-- | - `initialState`
-- |   - The component's starting state.
-- |   - Avoid mirroring prop values in state.
-- | - `render`
-- |   - Takes a current snapshot of the component (`Self`) and converts it to renderable `JSX`.
-- | - `didMount`
-- |   - The React component's `componentDidMount` lifecycle. Useful for initiating an action on first mount, such as fetching data from a server.
-- | - `shouldUpdate`
-- |   - Can be useful for performance optimizations. Rarely necessary.
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
-- | counter :: Props -> JSX
-- | counter = make component
-- |   { initialState: { counter: 0 }
-- |
-- |   , render: \self ->
-- |       R.button
-- |         { onClick: capture_ $ self.setState \s -> s { counter + 1 }
-- |         , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
-- |         }
-- |   }
-- | ```
-- |
-- | This example component overrides `initialState` and `render`.
-- |
-- | __*Note:* A `ComponentSpec` is *not* a valid React component by itself. If you would like to use
-- |   a React-Basic component from JavaScript, use `toReactComponent`.__
-- |
-- | __*See also:* `Component`, `ComponentSpec`, `make`, `makeStateless`__
type ComponentSpec props state =
  ( initialState :: state
  , render       :: Self props state -> JSX
  , didMount     :: Self props state -> Effect Unit
  , shouldUpdate :: Self props state -> { nextProps :: props, nextState :: state } -> Boolean
  , didUpdate    :: Self props state -> { prevProps :: props, prevState :: state } -> Effect Unit
  , willUnmount  :: Self props state -> Effect Unit
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

-- | `Self` represents the component instance at a particular point in time.
-- |
-- | - `props`
-- |   - A snapshot of `props` taken when this `Self` was created.
-- | - `state`
-- |   - A snapshot of `state` taken when this `Self` was created.
-- | - `setState`
-- |   - Update the component's state using the given function.
-- | - `setStateThen`
-- |   - Update the component's state using the given function. The given effects are performed after any resulting rerenders are completed. Be careful to avoid using stale props or state in the effect callback. Use `readProps` or `readState` to aquire the latest values.
-- | - `instance_`
-- |   - Unsafe escape hatch to the underlying component instance (`this` in the JavaScript React paradigm). Avoid as much as possible, but it's still frequently better than rewriting an entire component in JavaScript.
-- |
-- | __*See also:* `ComponentSpec`, `send`, `capture`, `readProps`, `readState`__
type Self props state =
  { props        :: props
  , state        :: state
  , setState     :: (state -> state) -> Effect Unit
  , setStateThen :: (state -> state) -> Effect Unit -> Effect Unit
  , instance_    :: ReactComponentInstance props state
  }

-- | Read the most up to date `props` directly from the component instance
-- | associated with this `Self`.
-- |
-- | _Note: This function is for specific, asynchronous edge cases.
-- |   Generally, the `props` snapshot on `Self` is sufficient.
-- |
-- | __*See also:* `Self`__
foreign import readProps :: forall props state. Self props state -> Effect props

-- | Read the most up to date `state` directly from the component instance
-- | associated with this `Self`.
-- |
-- | _Note: This function is for specific, asynchronous edge cases.
-- |   Generally, the `state` snapshot on `Self` is sufficient.
-- |
-- | __*See also:* `Self`__
foreign import readState :: forall props state. Self props state -> Effect state

-- | Describes a state update for use with `runUpdate`.
-- |
-- | __*See also:* `runUpdate`__
data StateUpdate props state
  = NoUpdate
  | Update               state
  | SideEffects                (Self props state -> Effect Unit)
  | UpdateAndSideEffects state (Self props state -> Effect Unit)

-- | Creates a send/dispatch function which sends actions through the given
-- | `update` function.
-- |
-- | __*See also:* `StateUpdate`__
runUpdate
  :: forall props state action
   . (Self props state -> action -> StateUpdate props state)
  -> Self props state
  -> action
  -> Effect Unit
runUpdate update = runEffectFn3 runUpdate_ (mkFn2 \self action -> buildStateUpdate (update self action))

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
-- | counter :: Props -> JSX
-- | counter = make component
-- |   { initialState: { counter: 0 }
-- |
-- |   , render: \self ->
-- |       R.button
-- |         { onClick: capture_ $ self.setState \s -> s { counter = s.counter + 1 }
-- |         , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
-- |         }
-- |   }
-- | ```
-- |
-- | __*See also:* `makeStateless`, `createComponent`, `Component`, `ComponentSpec`__
foreign import make
  :: forall spec spec_ props state
   . Union spec spec_ (ComponentSpec props state)
  => Component props
  -> { initialState :: state, render :: Self props state -> JSX | spec }
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
  make component { initialState: unit, render: \self -> render self.props }

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
  :: forall props state
   . Self props state
  -> String

-- | Represents a traditional React component. Useful for JavaScript interop and
-- | FFI. For example:
-- |
-- | ```purs
-- | foreign import ComponentRequiringJSHacks :: ReactComponent { someProp :: String }
-- | ```
-- |
-- | __*See also:* `element`, `toReactComponent`__
foreign import data ReactComponent :: Type -> Type

-- | An opaque representation of a React component's instance (`this` in the JavaScript
-- | React paradigm). It exists as an escape hatch to unsafe behavior. Use it with
-- | caution.
foreign import data ReactComponentInstance :: Type -> Type -> Type

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
  :: forall spec spec_ jsProps props state
   . Union spec spec_ (ComponentSpec props state)
  => ({ | jsProps } -> props)
  -> Component props
  -> { render :: Self props state -> JSX | spec }
  -> ReactComponent { | jsProps }


-- |
-- | Internal utility or FFI functions
-- |

buildStateUpdate
  :: forall props state
   . StateUpdate props state
  -> { state :: Nullable state
     , effects :: Nullable (Self props state -> Effect Unit)
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

foreign import runUpdate_
  :: forall props state action
   . EffectFn3
      (Fn2
        (Self props state)
        action
        { state :: Nullable state
        , effects :: Nullable (Self props state -> Effect Unit)
        }
      )
      (Self props state)
      action
      Unit

foreign import keyed_ :: Fn2 String JSX JSX

foreign import element_
  :: forall props
   . Fn2 (ReactComponent { | props }) { | props } JSX

foreign import elementKeyed_
  :: forall props
   . Fn2 (ReactComponent { | props }) { key :: String | props } JSX
