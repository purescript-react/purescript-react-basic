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

The underlying browser Event.

#### `EventFn`

``` purescript
newtype EventFn a b
```

Encapsulates a safe event operation. `EventFn`s can be composed
to perform multiple operations.

For example:

```purs
input { onChange: handler (preventDefault >>> targetValue)
                    \value -> setState \_ -> { value }
      }
```

##### Instances
``` purescript
Semigroupoid EventFn
Category EventFn
(IsSymbol l, RowCons l (EventFn a b) fns_rest fns, RowCons l b r_rest r, RowLacks l fns_rest, RowLacks l r_rest, Merge rest fns_rest a r_rest) => Merge (Cons l (EventFn a b) rest) fns a r
```

#### `handler`

``` purescript
handler :: forall a. EventFn SyntheticEvent a -> (a -> Eff (react :: ReactFX) Unit) -> EventHandler
```

Create an `EventHandler`, given an `EventFn` and a callback.

For example:

```purs
input { onChange: handler targetValue
                    \value -> setState \_ -> { value }
      }
```

#### `merge`

``` purescript
merge :: forall a fns fns_list r. RowToList fns fns_list => Merge fns_list fns a r => {  | fns } -> EventFn a ({  | r })
```

Merge multiple `EventFn` operations and collect their results.

For example:

```purs
input { onChange: handler (merge { targetValue, timeStamp })
                    \{ targetValue, timeStamp } -> setState \_ -> { ... }
      }
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
targetChecked :: EventFn SyntheticEvent (Nullable Boolean)
```

#### `targetValue`

``` purescript
targetValue :: EventFn SyntheticEvent (Nullable String)
```

#### `timeStamp`

``` purescript
timeStamp :: EventFn SyntheticEvent Number
```

#### `type_`

``` purescript
type_ :: EventFn SyntheticEvent String
```

#### `Merge`

``` purescript
class Merge (rl :: RowList) fns a r | rl -> fns, rl a -> r where
  mergeImpl :: RLProxy rl -> {  | fns } -> EventFn a ({  | r })
```

##### Instances
``` purescript
Merge Nil () a ()
(IsSymbol l, RowCons l (EventFn a b) fns_rest fns, RowCons l b r_rest r, RowLacks l fns_rest, RowLacks l r_rest, Merge rest fns_rest a r_rest) => Merge (Cons l (EventFn a b) rest) fns a r
```


