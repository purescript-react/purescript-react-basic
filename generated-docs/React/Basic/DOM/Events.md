## Module React.Basic.DOM.Events

This module defines safe event function and property accessors.

#### `EventHandler`

``` purescript
type EventHandler = EffFn1 (react :: ReactFX) SyntheticEvent Unit
```

An event handler, which receives a `SyntheticEvent` and performs some
effects in return.

#### `SyntheticEvent`

``` purescript
data SyntheticEvent :: Type
```

Event data that we receive from React.

#### `DOMNode`

``` purescript
data DOMNode :: Type
```

An _actual_ DOM node (not a virtual DOM element!)

#### `DOMEvent`

``` purescript
data DOMEvent :: Type
```

The underlying browser Event

#### `EventFn`

``` purescript
newtype EventFn a b
```

##### Instances
``` purescript
Semigroupoid EventFn
Category EventFn
```

#### `bubbles`

``` purescript
bubbles :: EventFn SyntheticEvent Boolean
```

#### `cancelable`

``` purescript
cancelable :: EventFn SyntheticEvent Boolean
```

#### `currentTarget`

``` purescript
currentTarget :: EventFn SyntheticEvent DOMNode
```

#### `defaultPrevented`

``` purescript
defaultPrevented :: EventFn SyntheticEvent Boolean
```

#### `eventPhase`

``` purescript
eventPhase :: EventFn SyntheticEvent Int
```

#### `eventPhaseNone`

``` purescript
eventPhaseNone :: Int
```

#### `eventPhaseCapturing`

``` purescript
eventPhaseCapturing :: Int
```

#### `eventPhaseAtTarget`

``` purescript
eventPhaseAtTarget :: Int
```

#### `eventPhaseBubbling`

``` purescript
eventPhaseBubbling :: Int
```

#### `isTrusted`

``` purescript
isTrusted :: EventFn SyntheticEvent Boolean
```

#### `nativeEvent`

``` purescript
nativeEvent :: EventFn SyntheticEvent DOMEvent
```

#### `preventDefault`

``` purescript
preventDefault :: EventFn SyntheticEvent SyntheticEvent
```

#### `isDefaultPrevented`

``` purescript
isDefaultPrevented :: EventFn SyntheticEvent Boolean
```

#### `stopPropagation`

``` purescript
stopPropagation :: EventFn SyntheticEvent SyntheticEvent
```

#### `isPropagationStopped`

``` purescript
isPropagationStopped :: EventFn SyntheticEvent Boolean
```

#### `target`

``` purescript
target :: EventFn SyntheticEvent DOMNode
```

#### `timeStamp`

``` purescript
timeStamp :: EventFn SyntheticEvent Number
```

#### `type_`

``` purescript
type_ :: EventFn SyntheticEvent String
```


