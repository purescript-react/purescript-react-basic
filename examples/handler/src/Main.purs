module Main where

import Prelude

import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Exception (throw)
import Handler (form)
import React.Basic.DOM (render)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

main :: Effect Unit
main = do
  doc <- (map toNonElementParentNode $ document =<< window)
  container1 <- fromJust' =<< getElementById "container-1" doc
  container2 <- fromJust' =<< getElementById "container-2" doc
  render (form { onChange: handler }) container1
  render (form {}) container2

  where
    handler :: _ -> Effect Unit
    handler obj = do
      log $ show obj

    fromJust' :: Maybe ~> Effect
    fromJust' = maybe (throw "Container element not found.") pure

