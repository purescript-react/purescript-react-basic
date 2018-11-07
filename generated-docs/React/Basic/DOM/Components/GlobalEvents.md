## Module React.Basic.DOM.Components.GlobalEvents

These helper components register and unregister event callbacks
using React's the lifecycle callbacks. They're useful for
declaratively defining global behavior which is associated with
a particular component being mounted without having to wire
all that lifecycle logic up manually.

For example:

```purs
render self =
  R.div
    { className: "dropdown-wrapper"
    , children:
        [ dropdownButton
        , guard showDropdown $
            windowEvent
              { eventType: EventType "click"
              , options: defaultOptions
              , handler: \_ -> send self CloseDropdown
              }
              dropdownMenu
        ]
    }
```

#### `EventHandlerOptions`

``` purescript
type EventHandlerOptions = { capture :: Boolean, once :: Boolean, passive :: Boolean }
```

#### `defaultOptions`

``` purescript
defaultOptions :: EventHandlerOptions
```

#### `globalEvent`

``` purescript
globalEvent :: EventTarget -> { eventType :: EventType, options :: EventHandlerOptions, handler :: Event -> Effect Unit } -> JSX -> JSX
```

#### `globalEvents`

``` purescript
globalEvents :: EventTarget -> Array { eventType :: EventType, options :: EventHandlerOptions, handler :: Event -> Effect Unit } -> JSX -> JSX
```

#### `windowEvent`

``` purescript
windowEvent :: { eventType :: EventType, options :: EventHandlerOptions, handler :: Event -> Effect Unit } -> JSX -> JSX
```

#### `windowEvents`

``` purescript
windowEvents :: Array { eventType :: EventType, options :: EventHandlerOptions, handler :: Event -> Effect Unit } -> JSX -> JSX
```


