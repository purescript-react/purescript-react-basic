## Module React.Basic.Types

#### `JSX`

``` purescript
data JSX :: Type
```

A virtual DOM element.

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

#### `SyntheticEvent`

``` purescript
type SyntheticEvent = { bubbles :: Boolean, cancelable :: Boolean, currentTarget :: DOMNode, defaultPrevented :: Boolean, eventPhase :: Number, isTrusted :: Boolean, target :: DOMNode, timeStamp :: Number, "type" :: String }
```

Event data that we receive from React.

#### `EventHandler`

``` purescript
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit
```

An event handler, which receives a `SyntheticEvent` and performs some
effects in return.


