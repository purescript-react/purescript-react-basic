## Module React.Basic.DOM.Events

This module defines safe DOM event function and property accessors.

#### `DOMNode`

``` purescript
data DOMNode :: Type
```

An _actual_ DOM node (not a virtual DOM element!)

#### `DOMEvent`

``` purescript
data DOMEvent :: Type
```

The underlying browser Event.

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

#### `targetChecked`

``` purescript
targetChecked :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `targetValue`

``` purescript
targetValue :: EventFn SyntheticEvent (Maybe String)
```

#### `timeStamp`

``` purescript
timeStamp :: EventFn SyntheticEvent Number
```

#### `type_`

``` purescript
type_ :: EventFn SyntheticEvent String
```


