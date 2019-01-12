## Module React.Basic.Hooks.Internal

This module is for types shared by both React.Basic and React.Basic.Hooks
and is not specific to hooks. Just import these things from one of those
modules.

#### `Component`

``` purescript
newtype Component props hooks
```

A React component

#### `unsafeComponent`

``` purescript
unsafeComponent :: forall props hooks. EffectFn1 props JSX -> Component props hooks
```

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

#### `empty`

``` purescript
empty :: JSX
```

An empty `JSX` node. This is often useful when you would like to conditionally
show something, but you don't want to (or can't) modify the `children` prop
on the parent node.

__*See also:* `JSX`, Monoid `guard`__

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

#### `element`

``` purescript
element :: forall hooks props. Component {  | props } hooks -> {  | props } -> JSX
```

Create a `JSX` node from a `Component`, by providing the props.

This function is for non-React-Basic React components, such as those
imported from FFI.

__*See also:* `Component`, `elementKeyed`__

#### `elementKeyed`

``` purescript
elementKeyed :: forall hooks props. Component {  | props } hooks -> { key :: String | props } -> JSX
```

Create a `JSX` node from a `Component`, by providing the props and a key.

__*See also:* `Component`, `element`, React's documentation regarding the special `key` prop__

#### `displayName`

``` purescript
displayName :: forall hooks props. Component props hooks -> String
```

Retrieve the Display Name from a `Component`. Useful for debugging and improving
error messages in logs.

__*See also:* `component`__


