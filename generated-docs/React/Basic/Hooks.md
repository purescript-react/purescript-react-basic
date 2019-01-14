## Module React.Basic.Hooks

*Warning:* This hooks API is *experimental* and relies on alpha-release
React versions. It's here to allow experimentation while we get feedback
on the API and wait for an official React release which supports hooks.
For more info on hooks, see [React's documentation](https://reactjs.org/docs/hooks-intro.html).

It's also recommended while using this module to use PureScript's new
"qualified do" syntax. It's available now on `master` but is not in a
PureScript release yet.

#### `CreateComponent`

``` purescript
type CreateComponent props hooks = Effect (Component props hooks)
```

Alias for convenience. Creating components is effectful because
React uses the function instance as the component's "identity"
or "type".

#### `component`

``` purescript
component :: forall hooks props. String -> (props -> Render Unit hooks JSX) -> CreateComponent props hooks
```

Create a React component given a display name and render function.

#### `memo`

``` purescript
memo :: forall hooks props. CreateComponent hooks props -> CreateComponent hooks props
```

#### `UseState`

``` purescript
data UseState :: Type -> Type -> Type
```

#### `useState`

``` purescript
useState :: forall hooks state. state -> Render hooks (UseState state hooks) (Tuple state ((state -> state) -> Effect Unit))
```

#### `UseEffect`

``` purescript
data UseEffect :: Type -> Type
```

#### `useEffect`

``` purescript
useEffect :: forall hooks. Array Key -> Effect (Effect Unit) -> Render hooks (UseEffect hooks) Unit
```

#### `UseLayoutEffect`

``` purescript
data UseLayoutEffect :: Type -> Type
```

#### `useLayoutEffect`

``` purescript
useLayoutEffect :: forall hooks. Array Key -> Effect (Effect Unit) -> Render hooks (UseLayoutEffect hooks) Unit
```

#### `UseReducer`

``` purescript
data UseReducer :: Type -> Type -> Type -> Type
```

#### `useReducer`

``` purescript
useReducer :: forall hooks state action. ToKey state => state -> (state -> action -> state) -> Render hooks (UseReducer state action hooks) (Tuple state (action -> Effect Unit))
```

#### `UseRef`

``` purescript
data UseRef :: Type -> Type -> Type
```

#### `readRef`

``` purescript
readRef :: forall a. Ref a -> Effect a
```

#### `readRefMaybe`

``` purescript
readRefMaybe :: forall a. Ref (Nullable a) -> Effect (Maybe a)
```

#### `writeRef`

``` purescript
writeRef :: forall a. Ref a -> a -> Effect Unit
```

#### `renderRef`

``` purescript
renderRef :: forall hooks a. Ref a -> Render hooks hooks a
```

#### `renderRefMaybe`

``` purescript
renderRefMaybe :: forall hooks a. Ref (Nullable a) -> Render hooks hooks (Maybe a)
```

#### `useRef`

``` purescript
useRef :: forall hooks a. a -> Render hooks (UseRef a hooks) (Ref a)
```

#### `UseContext`

``` purescript
data UseContext :: Type -> Type -> Type
```

#### `Context`

``` purescript
data Context :: Type -> Type
```

#### `useContext`

``` purescript
useContext :: forall hooks a. Context a -> Render hooks (UseContext a hooks) (Maybe a)
```

#### `createContext`

``` purescript
createContext :: forall a. a -> Effect (Context a)
```

#### `contextProvider`

``` purescript
contextProvider :: forall a. Context a -> a -> JSX -> JSX
```

#### `UseMemo`

``` purescript
data UseMemo :: Type -> Type -> Type
```

#### `useMemo`

``` purescript
useMemo :: forall hooks a. Array Key -> (Unit -> a) -> Render hooks (UseMemo a hooks) a
```

#### `Key`

``` purescript
data Key
```

Keys represent values React uses to check for changes.
This is done using JavaScript's reference equality (`===`),
so complicated types may want to implement `ToKey` so that
it returns a primative like a `String`. A timestamp appended
to a unique ID, for example. Less strict cases can implement
`ToKey` using `unsafeToKey`, while some extreme cases may
need a hashing or stringifying mechanism.

#### `ToKey`

``` purescript
class ToKey a  where
  toKey :: a -> Key
```

##### Instances
``` purescript
ToKey String
ToKey Int
ToKey Number
ToKey Boolean
ToKey {  | a }
ToKey (Array a)
ToKey (Nullable a)
ToKey (Maybe a)
```

#### `unsafeToKey`

``` purescript
unsafeToKey :: forall a. a -> Key
```

#### `Render`

``` purescript
newtype Render x y a
```

Render represents the effects allowed within a React component's
body, i.e. during "render". This includes hooks and ends with
returning JSX (see `pure`), but does not allow arbitrary side
effects.

##### Instances
``` purescript
IxFunctor Render
IxApply Render
IxBind Render
IxApplicative Render
```

#### `bind`

``` purescript
bind :: forall a b x y z m. IxBind m => m x y a -> (a -> m y z b) -> m x z b
```

#### `discard`

``` purescript
discard :: forall a b x y z m. IxBind m => m x y a -> (a -> m y z b) -> m x z b
```

#### `pure`

``` purescript
pure :: forall a x m. IxApplicative m => a -> m x x a
```


### Re-exported from Data.Tuple:

#### `Tuple`

``` purescript
data Tuple a b
  = Tuple a b
```

A simple product type for wrapping a pair of component values.

##### Instances
``` purescript
(Show a, Show b) => Show (Tuple a b)
(Eq a, Eq b) => Eq (Tuple a b)
(Eq a) => Eq1 (Tuple a)
(Ord a, Ord b) => Ord (Tuple a b)
(Ord a) => Ord1 (Tuple a)
(Bounded a, Bounded b) => Bounded (Tuple a b)
Semigroupoid Tuple
(Semigroup a, Semigroup b) => Semigroup (Tuple a b)
(Monoid a, Monoid b) => Monoid (Tuple a b)
(Semiring a, Semiring b) => Semiring (Tuple a b)
(Ring a, Ring b) => Ring (Tuple a b)
(CommutativeRing a, CommutativeRing b) => CommutativeRing (Tuple a b)
(HeytingAlgebra a, HeytingAlgebra b) => HeytingAlgebra (Tuple a b)
(BooleanAlgebra a, BooleanAlgebra b) => BooleanAlgebra (Tuple a b)
Functor (Tuple a)
FunctorWithIndex Unit (Tuple a)
Invariant (Tuple a)
Bifunctor Tuple
(Semigroup a) => Apply (Tuple a)
Biapply Tuple
(Monoid a) => Applicative (Tuple a)
Biapplicative Tuple
(Semigroup a) => Bind (Tuple a)
(Monoid a) => Monad (Tuple a)
Extend (Tuple a)
Comonad (Tuple a)
(Lazy a, Lazy b) => Lazy (Tuple a b)
Foldable (Tuple a)
Foldable1 (Tuple a)
FoldableWithIndex Unit (Tuple a)
Bifoldable Tuple
Traversable (Tuple a)
Traversable1 (Tuple a)
TraversableWithIndex Unit (Tuple a)
Bitraversable Tuple
(TypeEquals a Unit) => Distributive (Tuple a)
```

### Re-exported from Data.Tuple.Nested:

#### `tuple2`

``` purescript
tuple2 :: forall a b. a -> b -> Tuple2 a b
```

Given 2 values, creates a 2-tuple.

#### `(/\)`

``` purescript
infixr 6 Tuple as /\
```

Shorthand for constructing n-tuples as nested pairs.
`a /\ b /\ c /\ d /\ unit` becomes `Tuple a (Tuple b (Tuple c (Tuple d unit)))`

### Re-exported from React.Basic.Hooks.Internal:

#### `Ref`

``` purescript
data Ref :: Type -> Type
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

#### `Component`

``` purescript
newtype Component props hooks
```

A React component

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
elementKeyed :: forall hooks props. Component {  | props } hooks -> { key :: String | props } -> JSX
```

Create a `JSX` node from a `Component`, by providing the props and a key.

__*See also:* `Component`, `element`, React's documentation regarding the special `key` prop__

#### `element`

``` purescript
element :: forall hooks props. Component {  | props } hooks -> {  | props } -> JSX
```

Create a `JSX` node from a `Component`, by providing the props.

This function is for non-React-Basic React components, such as those
imported from FFI.

__*See also:* `Component`, `elementKeyed`__

#### `displayName`

``` purescript
displayName :: forall hooks props. Component props hooks -> String
```

Retrieve the Display Name from a `Component`. Useful for debugging and improving
error messages in logs.

__*See also:* `component`__

