module React.Basic.StrictMode
  ( strictMode
  ) where

import Prelude
import React.Basic (JSX, ReactComponent, element)

strictMode :: JSX -> JSX
strictMode = element strictMode_ <<< { children: _ }

foreign import strictMode_ :: ReactComponent { children :: JSX }
