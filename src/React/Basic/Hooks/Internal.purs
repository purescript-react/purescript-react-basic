-- | This module is for types shared by both React.Basic and React.Basic.Hooks
-- | and is not specific to hooks. Just import these things from one of those
-- | modules.
module React.Basic.Hooks.Internal
  ( Component
  , unsafeComponent
  , Ref
  , JSX
  , empty
  , keyed
  , fragment
  , element
  , elementKeyed
  , displayName
  ) where

-- | A React component
import Prelude

import Data.Function.Uncurried (Fn2, runFn2)
import Effect.Uncurried (EffectFn1)

-- | A React component
newtype Component props hooks = Component (EffectFn1 props JSX)

unsafeComponent :: forall props hooks. EffectFn1 props JSX -> Component props hooks
unsafeComponent = Component

foreign import data Ref :: Type -> Type

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
keyed :: String -> JSX -> JSX
keyed = runFn2 keyed_

-- | Render an Array of children without a wrapping component.
-- |
-- | __*See also:* `JSX`__
foreign import fragment :: Array JSX -> JSX

-- | Create a `JSX` node from a `Component`, by providing the props.
-- |
-- | This function is for non-React-Basic React components, such as those
-- | imported from FFI.
-- |
-- | __*See also:* `Component`, `elementKeyed`__
element
  :: forall hooks props
   . Component {| props } hooks
  -> {| props }
  -> JSX
element (Component c) props = runFn2 element_ c props

-- | Create a `JSX` node from a `Component`, by providing the props and a key.
-- |
-- | __*See also:* `Component`, `element`, React's documentation regarding the special `key` prop__
elementKeyed
  :: forall hooks props
   . Component {| props } hooks
  -> { key :: String | props }
  -> JSX
elementKeyed = runFn2 elementKeyed_

-- | Retrieve the Display Name from a `Component`. Useful for debugging and improving
-- | error messages in logs.
-- |
-- | __*See also:* `component`__
foreign import displayName
  :: forall hooks props
   . Component props hooks
  -> String

-- |
-- | Internal utility or FFI functions
-- |

foreign import keyed_ :: Fn2 String JSX JSX

foreign import element_
  :: forall props
   . Fn2 (EffectFn1 { | props } JSX) { | props } JSX

foreign import elementKeyed_
  :: forall hooks props
   . Fn2 (Component {| props } hooks) { key :: String | props } JSX
