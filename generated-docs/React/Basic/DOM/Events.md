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

General event fields

#### `cancelable`

``` purescript
cancelable :: EventFn SyntheticEvent Boolean
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

#### `currentTarget`

``` purescript
currentTarget :: EventFn SyntheticEvent DOMNode
```

#### `relatedTarget`

``` purescript
relatedTarget :: EventFn SyntheticEvent (Maybe DOMNode)
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

#### `key`

``` purescript
key :: EventFn SyntheticEvent (Maybe String)
```

Keyboard event fields

#### `code`

``` purescript
code :: EventFn SyntheticEvent (Maybe String)
```

#### `char`

``` purescript
char :: EventFn SyntheticEvent (Maybe String)
```

#### `location`

``` purescript
location :: EventFn SyntheticEvent (Maybe Number)
```

#### `repeat`

``` purescript
repeat :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `locale`

``` purescript
locale :: EventFn SyntheticEvent (Maybe String)
```

#### `ctrlKey`

``` purescript
ctrlKey :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `shiftKey`

``` purescript
shiftKey :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `altKey`

``` purescript
altKey :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `metaKey`

``` purescript
metaKey :: EventFn SyntheticEvent (Maybe Boolean)
```

#### `detail`

``` purescript
detail :: EventFn SyntheticEvent (Maybe Int)
```

Mouse event fields

#### `screenX`

``` purescript
screenX :: EventFn SyntheticEvent (Maybe Number)
```

#### `screenY`

``` purescript
screenY :: EventFn SyntheticEvent (Maybe Number)
```

#### `clientX`

``` purescript
clientX :: EventFn SyntheticEvent (Maybe Number)
```

#### `clientY`

``` purescript
clientY :: EventFn SyntheticEvent (Maybe Number)
```

#### `button`

``` purescript
button :: EventFn SyntheticEvent (Maybe Int)
```

#### `buttons`

``` purescript
buttons :: EventFn SyntheticEvent (Maybe Int)
```


