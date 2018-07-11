module React.Basic
  ( component
  , stateless
  , createElement
  , createElementKeyed
  , empty
  , fragment
  , fragmentKeyed
  , JSX
  , ReactComponent
  , ReactComponentInstance
  , react
  ) where

import Prelude

import Data.Function.Uncurried (Fn1, Fn2, mkFn1, runFn2)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, mkEffectFn1, runEffectFn1, runEffectFn2)
import Unsafe.Coerce (unsafeCoerce)

-- | A virtual DOM element.
foreign import data JSX :: Type

instance semigroupJSX :: Semigroup JSX where
  append a b = fragment [ a, b ]

instance monoidJSX :: Monoid JSX where
  mempty = empty

-- | A React component which can be used from JavaScript.
foreign import data ReactComponent :: Type -> Type

-- | Create a React component from a _specification_ of that component.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | a function to apply incoming props to the internal state, and a rendering
-- | function which takes props, state and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
component
  :: forall props state
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps ::
        { isFirstMount :: Boolean
        , props :: { | props }
        , state :: { | state }
        , setState :: ({ | state } -> { | state }) -> Effect Unit
        , setStateThen :: ({ | state } -> { | state }) -> ({ | state } -> Effect Unit) -> Effect Unit
        , instance_ :: ReactComponentInstance
        }
        -> Effect Unit
     , render ::
        { props :: { | props }
        , state :: { | state }
        , setState :: ({ | state } -> { | state }) -> Effect Unit
        , setStateThen :: ({ | state } -> { | state }) -> ({ | state } -> Effect Unit) -> Effect Unit
        , instance_ :: ReactComponentInstance
        }
        -> JSX
     }
  -> ReactComponent { | props }
component { displayName, initialState, receiveProps, render } =
  component_
    { displayName
    , initialState
    , receiveProps: mkEffectFn1 \this -> receiveProps
        { isFirstMount: this.isFirstMount
        , props: this.props
        , state: this.state
        , setState: runEffectFn1 this.setState
        , setStateThen: \update cb -> runEffectFn2 this.setStateThen update (mkEffectFn1 cb)
        , instance_: this.instance_
        }
    , render: mkFn1 \this -> render
        { props: this.props
        , state: this.state
        , setState: runEffectFn1 this.setState
        , setStateThen: \update cb -> runEffectFn2 this.setStateThen update (mkEffectFn1 cb)
        , instance_: this.instance_
        }
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
  component
    { displayName
    , initialState: {}
    , receiveProps: \_ -> pure unit
    , render: \this -> render this.props
    }

-- | Represents the mounted component instance, or "this" in vanilla React.
foreign import data ReactComponentInstance :: Type

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
  :: forall props state
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps ::
        EffectFn1
          { isFirstMount :: Boolean
          , props :: { | props }
          , state :: { | state }
          , setState :: EffectFn1 ({ | state } -> { | state }) Unit
          , setStateThen :: EffectFn2 ({ | state } -> { | state }) (EffectFn1 { | state } Unit) Unit
          , instance_ :: ReactComponentInstance
          }
          Unit
     , render ::
        Fn1
          { props :: { | props }
          , state :: { | state }
          , setState :: EffectFn1 ({ | state } -> { | state }) Unit
          , setStateThen :: EffectFn2 ({ | state } -> { | state }) (EffectFn1 { | state } Unit) Unit
          , instance_ :: ReactComponentInstance
          }
          JSX
     }
  -> ReactComponent { | props }

foreign import createElement_ :: forall props. Fn2 (ReactComponent { | props }) { | props } JSX

foreign import createElementKeyed_ :: forall props. Fn2 (ReactComponent { | props }) { key :: String | props } JSX

foreign import fragmentKeyed_ :: Fn2 String (Array JSX) JSX

-- | Deprecated -- prefer `component`
-- | This function is only to make upgrades a little easier.
react
  :: forall props state
   . { displayName :: String
     , initialState :: { | state }
     , receiveProps :: { | props } -> { | state } -> (({ | state } -> { | state }) -> Effect Unit) -> Effect Unit
     , render :: { | props } -> { | state } -> (({ | state } -> { | state }) -> Effect Unit) -> JSX
     }
  -> ReactComponent { | props }
react { displayName, initialState, receiveProps, render } =
  component
    { displayName
    , initialState
    , receiveProps: \this -> receiveProps this.props this.state this.setState
    , render: \this -> render this.props this.state this.setState
    }
