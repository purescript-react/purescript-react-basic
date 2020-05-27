module React.Basic where

import Prelude
import Effect (Effect)

-- | Represents rendered React VDOM (the result of calling `React.createElement`
-- | in JavaScript).
-- |
-- | `JSX` is a `Monoid`:
-- |
-- | - `append`
-- |   - Merge two `JSX` nodes using `React.Fragment`.
-- | - `mempty`
-- |   - The `empty` node; renders nothing.
-- |
-- | __*Hint:* Many useful utility functions already exist for Monoids. For example,
-- |   `guard` can be used to conditionally render a subtree of components.__
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

-- | An empty `JSX` node. This is often useful when you would like to conditionally
-- | show something, but you don't want to (or can't) modify the `children` prop
-- | on the parent node.
-- |
-- | __*See also:* `JSX`, Monoid `guard`__
foreign import empty :: JSX

-- | Apply a React key to a subtree. React-Basic usually hides React's warning about
-- | using `key` props on components in an Array, but keys are still important for
-- | any dynamic lists of child components.
-- |
-- | __*See also:* React's documentation regarding the special `key` prop__
foreign import keyed :: String -> JSX -> JSX

-- | Render an Array of children without a wrapping component.
-- |
-- | __*See also:* `JSX`__
foreign import fragment :: Array JSX -> JSX

-- | Create a `JSX` node from a `ReactComponent`, by providing the props.
-- |
-- | __*See also:* `ReactComponent`, `elementKeyed`__
foreign import element ::
  forall props.
  ReactComponent { | props } ->
  { | props } ->
  JSX

-- | Create a `JSX` node from a `ReactComponent`, by providing the props and a key.
-- |
-- | __*See also:* `ReactComponent`, `element`, React's documentation regarding the special `key` prop__
foreign import elementKeyed ::
  forall props.
  ReactComponent { | props } ->
  { key :: String | props } ->
  JSX

-- | Represents a traditional React component. Useful for JavaScript interop and
-- | FFI. For example:
-- |
-- | ```purs
-- | foreign import ComponentRequiringJSHacks :: ReactComponent { someProp :: String }
-- | ```
-- |
-- | __*See also:* `element`, `toReactComponent`__
foreign import data ReactComponent :: Type -> Type

-- | A React Ref, as created by `React.createRef`
foreign import data Ref :: Type -> Type

foreign import data ReactContext :: Type -> Type

-- | Create a `ReactContext` given a default value. Use `provider` and `consumer`
-- | to provide and consume context values. Alternatively, use `contextProvider`
-- | and `contextConsumer` directly if a `ReactComponent` is required for interop.
-- |
-- | __*See also:* `provider`, `consumer`, React's documentation regarding Context__
foreign import createContext :: forall a. a -> Effect (ReactContext a)

foreign import contextProvider ::
  forall a.
  ReactContext a ->
  ReactComponent { value :: a, children :: Array JSX }

foreign import contextConsumer ::
  forall a.
  ReactContext a ->
  ReactComponent { children :: a -> Array JSX }

-- | Create a provider `JSX` given a context value and children.
-- |
-- | __*See also:* `createContext`, `consumer`__
provider :: forall a. ReactContext a -> a -> Array JSX -> JSX
provider context value children = element (contextProvider context) { value, children }

-- | Create a consumer `JSX` from a context value to children.
-- |
-- | __*See also:* `createContext`, `producer`__
consumer :: forall a. ReactContext a -> (a -> Array JSX) -> JSX
consumer context children = element (contextConsumer context) { children }
