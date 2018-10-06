## Module React.Basic.Compat

#### `Component`

``` purescript
type Component = ReactComponent
```

#### `component`

``` purescript
component :: forall props state. { displayName :: String, initialState :: {  | state }, receiveProps :: { props :: {  | props }, state :: {  | state }, setState :: ({  | state } -> {  | state }) -> Effect Unit } -> Effect Unit, render :: { props :: {  | props }, state :: {  | state }, setState :: ({  | state } -> {  | state }) -> Effect Unit } -> JSX } -> ReactComponent {  | props }
```

Supports a common subset of the v2 API to ease the upgrade process

#### `stateless`

``` purescript
stateless :: forall props. { displayName :: String, render :: {  | props } -> JSX } -> ReactComponent {  | props }
```

Supports a common subset of the v2 API to ease the upgrade process


### Re-exported from React.Basic:

#### `StateUpdate`

``` purescript
data StateUpdate props state action
  = NoUpdate
  | Update state
  | SideEffects (Self props state action -> Effect Unit)
  | UpdateAndSideEffects state (Self props state action -> Effect Unit)
```

#### `Self`

``` purescript
type Self props state action = { props :: props, state :: state, readProps :: Effect props, readState :: Effect state, send :: action -> Effect Unit, instance_ :: ReactComponentInstance }
```

#### `ReactComponent`

``` purescript
data ReactComponent props
```

#### `JSX`

``` purescript
data JSX :: Type
```

A virtual DOM element.

##### Instances
``` purescript
Semigroup JSX
Monoid JSX
```

#### `toReactComponent`

``` purescript
toReactComponent :: forall props. ({  | props } -> JSX) -> ReactComponent {  | props }
```

#### `makeStateless`

``` purescript
makeStateless :: forall props. ComponentSpec props Void Void -> (props -> JSX) -> props -> JSX
```

Helper to make stateless component definition slightly
less verbose:

```purs
render = makeStateless component \props -> JSX

component = createStatelessComponent "Xyz"
```

#### `make`

``` purescript
make :: forall props state action. ComponentSpec props state action -> props -> JSX
```

Turn a `ComponentSpec` into a usable render function.
This is usually where you will want to provide customized
implementations:

```purs
type Props =
  { label :: String
  }

data Action
  = Increment

render :: Props -> JSX
render = make component
  { initialState = { counter: 0 }

  , update = \self action -> case action of
      Increment ->
        Update self.state { counter = self.state.counter + 1 }

  , render = \self ->
      R.button
        { onClick: Events.handler_ do self.send Increment
        , children: [ R.text (self.props.label <> ": " <> show self.state.counter) ]
        }
  }

component :: Component
component = createComponent "Counter"
```

#### `fragmentKeyed`

``` purescript
fragmentKeyed :: String -> Array JSX -> JSX
```

Render an Array of children without a wrapping component.

Provide a key when dynamically rendering multiple fragments along side
each other.

#### `fragment`

``` purescript
fragment :: Array JSX -> JSX
```

Render an Array of children without a wrapping component.

#### `empty`

``` purescript
empty :: JSX
```

An empty node. This is often useful when you would like to conditionally
show something, but you don't want to (or can't) modify the `children` prop
on the parent node.

#### `elementKeyed`

``` purescript
elementKeyed :: forall props. ReactComponent {  | props } -> { key :: String | props } -> JSX
```

Like `element`, plus a `key` for rendering components in a dynamic list.
For more information see: https://reactjs.org/docs/reconciliation.html#keys

#### `element`

``` purescript
element :: forall props. ReactComponent {  | props } -> {  | props } -> JSX
```

Create a `JSX` node from a React component, by providing the props.

#### `createStatelessComponent`

``` purescript
createStatelessComponent :: String -> { "$$type" :: forall props. ReactComponent props, initialState :: Void, shouldUpdate :: forall props. LimitedSelf props Void -> props -> Void -> Boolean, didMount :: forall props. Self props Void Void -> Effect Unit, didUpdate :: forall props. Self props Void Void -> Effect Unit, willUnmount :: forall props. LimitedSelf props Void -> Effect Unit, update :: forall props. Update props Void Void, render :: forall props. Self props Void Void -> JSX }
```

Creates a named, stateless component

#### `createComponent`

``` purescript
createComponent :: String -> { "$$type" :: forall props. ReactComponent props, initialState :: forall state. state, shouldUpdate :: forall props state. LimitedSelf props state -> props -> state -> Boolean, didMount :: forall props state action. Self props state action -> Effect Unit, didUpdate :: forall props state action. Self props state action -> Effect Unit, willUnmount :: forall props state action. LimitedSelf props state -> Effect Unit, update :: forall props state action. Update props state action, render :: forall props state action. Self props state action -> JSX }
```

