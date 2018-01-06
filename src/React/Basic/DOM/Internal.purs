module React.Basic.DOM.Internal
  ( createElement
  , createElementNoChildren
  ) where

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import React.Basic.Types (JSX)

foreign import createElement_
  :: forall attrs. Fn3 String { | attrs } (Array JSX) JSX

foreign import createElementNoChildren_
  :: forall attrs. Fn2 String { | attrs } JSX

createElement
  :: forall attrs
   . String
  -> { | attrs }
  -> Array JSX
  -> JSX
createElement = runFn3 createElement_

createElementNoChildren
  :: forall attrs
   . String
  -> { | attrs }
  -> JSX
createElementNoChildren = runFn2 createElementNoChildren_
