## Module React.Basic

#### `react`

``` purescript
react :: forall props state fx. { displayName :: String, initialState :: {  | state }, receiveProps :: {  | props } -> {  | state } -> (SetState state fx) -> Eff (react :: ReactFX | fx) Unit, render :: {  | props } -> {  | state } -> (SetState state fx) -> JSX } -> ReactComponent {  | props }
```

Create a React component from a _specification_ of that component.

A _specification_ consists of a state type, an initial value for that state,
a function to apply incoming props to the internal state, and a rendering
function which takes props, state and a state update function.

The rendering function should return a value of type `JSX`, which can be
constructed using the helper functions provided by the `React.Basic.DOM`
module (and re-exported here).

#### `stateless`

``` purescript
stateless :: forall props. { displayName :: String, render :: {  | props } -> JSX } -> ReactComponent {  | props }
```

Create a stateless React component.

Removes a little bit of the `react` function's boilerplate when creating
components which don't use state.

#### `createElement`

``` purescript
createElement :: forall props. ReactComponent {  | props } -> {  | props } -> JSX
```

Create a `JSX` node from a React component, by providing the props.

#### `createElementKeyed`

``` purescript
createElementKeyed :: forall props. ReactComponent {  | props } -> { key :: String | props } -> JSX
```

Like `createElement`, plus a `key` for rendering components in a dynamic list.
For more information see: https://reactjs.org/docs/reconciliation.html#keys

#### `empty`

``` purescript
empty :: JSX
```

An empty node. This is often useful when you would like to conditionally
show something, but you don't want to (or can't) modify the `children` prop
on the parent node.

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

#### `ReactComponent`

``` purescript
data ReactComponent :: Type -> Type
```

A React component which can be used from JavaScript.

#### `ReactFX`

``` purescript
data ReactFX :: Effect
```

A placeholder effect for all React FFI.


