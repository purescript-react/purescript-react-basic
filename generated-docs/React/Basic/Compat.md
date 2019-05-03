## Module React.Basic.Compat

This module is deprecated and may be removed in the next
major version.

#### `Component`

``` purescript
type Component = ReactComponent
```

#### `component`

``` purescript
component :: forall props state. { displayName :: String, initialState :: Record state, receiveProps :: Self (Record props) (Record state) -> Effect Unit, render :: Self (Record props) (Record state) -> JSX } -> ReactComponent (Record props)
```

Supports a common subset of the v2 API to ease the upgrade process

#### `stateless`

``` purescript
stateless :: forall props. { displayName :: String, render :: Record props -> JSX } -> ReactComponent (Record props)
```

Supports a common subset of the v2 API to ease the upgrade process


### Re-exported from React.Basic:

#### `Self`

``` purescript
type Self props state = { instance_ :: ReactComponentInstance props state, props :: props, setState :: (state -> state) -> Effect Unit, setStateThen :: (state -> state) -> Effect Unit -> Effect Unit, state :: state }
```

`Self` represents the component instance at a particular point in time.

- `props`
  - A snapshot of `props` taken when this `Self` was created.
- `state`
  - A snapshot of `state` taken when this `Self` was created.
- `setState`
  - Update the component's state using the given function.
- `setStateThen`
  - Update the component's state using the given function. The given effects are performed after any resulting rerenders are completed. Be careful to avoid using stale props or state in the effect callback. Use `readProps` or `readState` to aquire the latest values.
- `instance_`
  - Unsafe escape hatch to the underlying component instance (`this` in the JavaScript React paradigm). Avoid as much as possible, but it's still frequently better than rewriting an entire component in JavaScript.

__*See also:* `ComponentSpec`, `send`, `capture`, `readProps`, `readState`__

#### `JSX`

``` purescript
data JSX :: Type
```

Represents rendered React VDOM (the result of calling `React.createElement`
in JavaScript).

`JSX` is a `Monoid`:

- `append`
  - Merge two `JSX` nodes using `React.Fragment`.
- `mempty`
  - The `empty` node; renders nothing.

__*Hint:* Many useful utility functions already exist for Monoids. For example,
  `guard` can be used to conditionally render a subtree of components.__

##### Instances
``` purescript
Semigroup JSX
Monoid JSX
```

#### `keyed`

``` purescript
keyed :: String -> JSX -> JSX
```

Apply a React key to a subtree. React-Basic usually hides React's warning about
using `key` props on components in an Array, but keys are still important for
any dynamic lists of child components.

__*See also:* React's documentation regarding the special `key` prop__

#### `fragment`

``` purescript
fragment :: Array JSX -> JSX
```

Render an Array of children without a wrapping component.

__*See also:* `JSX`__

#### `empty`

``` purescript
empty :: JSX
```

An empty `JSX` node. This is often useful when you would like to conditionally
show something, but you don't want to (or can't) modify the `children` prop
on the parent node.

__*See also:* `JSX`, Monoid `guard`__

#### `elementKeyed`

``` purescript
elementKeyed :: forall props. ReactComponent (Record props) -> { key :: String | props } -> JSX
```

Create a `JSX` node from a `ReactComponent`, by providing the props and a key.

This function is for non-React-Basic React components, such as those
imported from FFI.

__*See also:* `ReactComponent`, `element`, React's documentation regarding the special `key` prop__

#### `element`

``` purescript
element :: forall props. ReactComponent (Record props) -> Record props -> JSX
```

Create a `JSX` node from a `ReactComponent`, by providing the props.

This function is for non-React-Basic React components, such as those
imported from FFI.

__*See also:* `ReactComponent`, `elementKeyed`__

