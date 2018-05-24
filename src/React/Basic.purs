module React.Basic
  ( react
  , stateless
  , createElement
  , createElementKeyed
  , empty
  , fragment
  , fragmentKeyed
  , JSX
  , ReactComponent
  , ReactFX
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Control.Monad.Eff.Uncurried (EffFn3, mkEffFn3)
import Data.Function.Uncurried (Fn2, Fn3, mkFn3, runFn2)
import Data.Monoid (class Monoid)
import Unsafe.Coerce (unsafeCoerce)

-- | A virtual DOM element.
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

-- | A React component which can be used from JavaScript.
foreign import data ReactComponent :: Type -> Type

-- | A placeholder effect for all React FFI.
foreign import data ReactFX :: Effect

-- | Create a React component from a _specification_ of that component.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | a function to apply incoming props to the internal state, and a rendering
-- | function which takes props, state and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
react
  :: forall props state fx
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps :: { | props } -> { | state } -> (SetState state fx) -> Eff (react :: ReactFX | fx) Unit
     , render :: { | props } -> { | state } -> (SetState state fx) -> JSX
     }
  -> ReactComponent { | props }
react { displayName, initialState, receiveProps, render } =
  component_
    { displayName
    , initialState
    , receiveProps: mkEffFn3 receiveProps
    , render: mkFn3 render
    }

-- | Create a stateless React component.
-- |
-- | Removes a little bit of the `react` function's boilerplate when creating
-- | components which don't use state.
stateless
  :: forall props
   . { displayName :: String
     , render :: { | props } -> JSX
     }
  -> ReactComponent { | props }
stateless { displayName, render } =
  react
    { displayName
    , initialState: {}
    , receiveProps: \_ _ _ -> pure unit
    , render: \props _ _ -> render props
    }

-- | SetState uses an update function to modify the current state.
type SetState state fx = ({ | state } -> { | state }) -> Eff (react :: ReactFX | fx) Unit

-- | Create a `JSX` node from a React component, by providing the props.
createElement
  :: forall props
   . ReactComponent { | props }
  -> { | props }
  -> JSX
createElement = runFn2 createElement_

-- | Like `createElement`, plus a `key` for rendering components in a dynamic list.
-- | For more information see: https://reactjs.org/docs/reconciliation.html#keys
createElementKeyed
  :: forall props
   . ReactComponent { | props }
  -> { key :: String | props }
  -> JSX
createElementKeyed = runFn2 createElementKeyed_

-- | An empty node. This is often useful when you would like to conditionally
-- | show something, but you don't want to (or can't) modify the `children` prop
-- | on the parent node.
empty :: JSX
empty = unsafeCoerce false

-- | Render an Array of children without a wrapping component.
foreign import fragment :: Array JSX -> JSX

-- | Render an Array of children without a wrapping component.
-- |
-- | Provide a key when dynamically rendering multiple fragments along side
-- | each other.
fragmentKeyed :: String -> Array JSX -> JSX
fragmentKeyed = runFn2 fragmentKeyed_

-- | Private FFI

foreign import component_
  :: forall props state fx
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps :: EffFn3 (react :: ReactFX | fx) { | props } { | state } (SetState state fx) Unit
     , render :: Fn3 { | props } { | state } (SetState state fx) JSX
     }
  -> ReactComponent { | props }

foreign import createElement_ :: forall props. Fn2 (ReactComponent { | props }) { | props } JSX

foreign import createElementKeyed_ :: forall props. Fn2 (ReactComponent { | props }) { key :: String | props } JSX

foreign import fragmentKeyed_ :: Fn2 String (Array JSX) JSX
