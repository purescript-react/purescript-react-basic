module React.Basic.DOM.Components.LogLifecycles
  ( logLifecycles
  ) where

import Prim.TypeError (class Warn, Text)
import React.Basic (JSX, ReactComponent, element)

foreign import logLifecycles_ :: ReactComponent { child :: JSX }

logLifecycles :: Warn (Text "LogLifecycle is for debugging purposes only. Don't forget to remove it!") => JSX -> JSX
logLifecycles child = element logLifecycles_ { child }
