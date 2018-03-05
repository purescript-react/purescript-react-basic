## Module React.Basic

#### `react`

``` purescript
react :: forall props state fx. { displayName :: String, initialState :: state, receiveProps :: props -> state -> (SetState state fx) -> Eff (react :: ReactFX | fx) Unit, render :: props -> state -> (SetState state fx) -> JSX } -> ReactComponent props
```

Create a React component from a _specification_ of that component.

A _specification_ consists of a state type, an initial value for that state,
a function to apply incoming props to the internal state, and a rendering
function which takes props, state and a state update function.

The rendering function should return a value of type `JSX`, which can be
constructed using the helper functions provided by the `React.Basic.DOM`
module (and re-exported here).

#### `createElement`

``` purescript
createElement :: forall props. ReactComponent props -> props -> JSX
```

Create a `JSX` node from a React component, by providing the props.

#### `createElementKeyed`

``` purescript
createElementKeyed :: forall props. ReactComponent {  | props } -> { key :: String | props } -> JSX
```

Like `createElement`, plus a `key` for rendering components in a dynamic list.
For more information see: https://reactjs.org/docs/reconciliation.html#keys

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


### Re-exported from React.Basic.Types:

#### `SyntheticEvent`

``` purescript
type SyntheticEvent = { bubbles :: Boolean, cancelable :: Boolean, currentTarget :: DOMNode, defaultPrevented :: Boolean, eventPhase :: Number, isTrusted :: Boolean, target :: DOMNode, timeStamp :: Number, "type" :: String }
```

Event data that we receive from React.

#### `ReactFX`

``` purescript
data ReactFX :: Effect
```

A placeholder effect for all React FFI.

#### `ReactComponent`

``` purescript
data ReactComponent :: Type -> Type
```

A React component which can be used from JavaScript.

#### `JSX`

``` purescript
data JSX :: Type
```

A virtual DOM element.

#### `EventHandler`

``` purescript
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit
```

An event handler, which receives a `SyntheticEvent` and performs some
effects in return.

#### `DOMNode`

``` purescript
data DOMNode :: Type
```

An _actual_ DOM node (not a virtual DOM element!)

#### `CSS`

``` purescript
data CSS :: Type
```

An abstract type representing records of CSS attributes.

