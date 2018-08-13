## Module React.Basic

#### `Component`

``` purescript
data Component :: Type -> Type
```

A React component which can be used from JavaScript.

#### `ComponentInstance`

``` purescript
data ComponentInstance :: Type
```

Represents the mounted component instance, or "this" in vanilla React.

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

#### `component`

``` purescript
component :: forall props state. { displayName :: String, initialState :: {  | state }, receiveProps :: { isFirstMount :: Boolean, props :: {  | props }, state :: {  | state }, setState :: SetState state, setStateThen :: SetStateThen state, instance_ :: ComponentInstance } -> Effect Unit, render :: { props :: {  | props }, state :: {  | state }, setState :: SetState state, setStateThen :: SetStateThen state, instance_ :: ComponentInstance } -> JSX } -> Component {  | props }
```

Create a React component from a _specification_ of that component.

A _specification_ consists of a state type, an initial value for that state,
a function to apply incoming props to the internal state, and a rendering
function which takes props, state and a state update function.

The rendering function should return a value of type `JSX`, which can be
constructed using the helper functions provided by the `React.Basic.DOM`
module.

Note: This function relies on `React.PureComponent` internally

#### `stateless`

``` purescript
stateless :: forall props. { displayName :: String, render :: {  | props } -> JSX } -> Component {  | props }
```

Create a stateless React component.

Removes a little bit of the `react` function's boilerplate when creating
components which don't use state.

#### `element`

``` purescript
element :: forall props. Component {  | props } -> {  | props } -> JSX
```

Create a `JSX` node from a React component, by providing the props.

#### `elementKeyed`

``` purescript
elementKeyed :: forall props. Component {  | props } -> { key :: String | props } -> JSX
```

Like `element`, plus a `key` for rendering components in a dynamic list.
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


