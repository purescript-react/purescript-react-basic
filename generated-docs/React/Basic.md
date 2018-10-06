## Module React.Basic

#### `Component`

``` purescript
type Component = forall props state action. ComponentSpec props state action
```

#### `StatelessComponent`

``` purescript
type StatelessComponent = forall props. ComponentSpec props Void Void
```

#### `ComponentSpec`

``` purescript
type ComponentSpec props state action = { "$$type" :: ReactComponent props, initialState :: state, shouldUpdate :: LimitedSelf props state -> props -> state -> Boolean, didMount :: Self props state action -> Effect Unit, didUpdate :: Self props state action -> Effect Unit, willUnmount :: LimitedSelf props state -> Effect Unit, update :: Update props state action, render :: Self props state action -> JSX }
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

#### `Update`

``` purescript
type Update props state action = Self props state action -> action -> StateUpdate props state action
```

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

#### `LimitedSelf`

``` purescript
type LimitedSelf props state = { props :: props, state :: state }
```

#### `ReactComponent`

``` purescript
data ReactComponent props
```

#### `ReactComponentInstance`

``` purescript
data ReactComponentInstance
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

#### `asyncEffects`

``` purescript
asyncEffects :: forall props state action. (Self props state action -> Aff action) -> Self props state action -> Effect Unit
```

Convenience function for sending an action asynchronously.

Note: potential failure should be handled and converted to an
  action, as the default error handler will simply log the
  error to the console.

#### `createComponent`

``` purescript
createComponent :: String -> { "$$type" :: forall props. ReactComponent props, initialState :: forall state. state, shouldUpdate :: forall props state. LimitedSelf props state -> props -> state -> Boolean, didMount :: forall props state action. Self props state action -> Effect Unit, didUpdate :: forall props state action. Self props state action -> Effect Unit, willUnmount :: forall props state action. LimitedSelf props state -> Effect Unit, update :: forall props state action. Update props state action, render :: forall props state action. Self props state action -> JSX }
```

#### `createStatelessComponent`

``` purescript
createStatelessComponent :: String -> { "$$type" :: forall props. ReactComponent props, initialState :: Void, shouldUpdate :: forall props. LimitedSelf props Void -> props -> Void -> Boolean, didMount :: forall props. Self props Void Void -> Effect Unit, didUpdate :: forall props. Self props Void Void -> Effect Unit, willUnmount :: forall props. LimitedSelf props Void -> Effect Unit, update :: forall props. Update props Void Void, render :: forall props. Self props Void Void -> JSX }
```

Creates a named, stateless component

#### `empty`

``` purescript
empty :: JSX
```

An empty node. This is often useful when you would like to conditionally
show something, but you don't want to (or can't) modify the `children` prop
on the parent node.

#### `keyed`

``` purescript
keyed :: String -> JSX -> JSX
```

Apply a React key to a sub-tree.

#### `fragment`

``` purescript
fragment :: Array JSX -> JSX
```

Render an Array of children without a wrapping component.

#### `fragmentKeyed`

``` purescript
fragmentKeyed :: String -> Array JSX -> JSX
```

Render an Array of children without a wrapping component.

Provide a key when dynamically rendering multiple fragments along side
each other.

#### `element`

``` purescript
element :: forall props. ReactComponent {  | props } -> {  | props } -> JSX
```

Create a `JSX` node from a React component, by providing the props.

#### `elementKeyed`

``` purescript
elementKeyed :: forall props. ReactComponent {  | props } -> { key :: String | props } -> JSX
```

Like `element`, plus a `key` for rendering components in a dynamic list.
For more information see: https://reactjs.org/docs/reconciliation.html#keys

#### `toReactComponent`

``` purescript
toReactComponent :: forall props. ({  | props } -> JSX) -> ReactComponent {  | props }
```


