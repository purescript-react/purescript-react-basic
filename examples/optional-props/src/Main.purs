module Main where

import Prelude

import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect.Exception (throw)
import OptionalProps (counter)
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
  container3 <- fromJust' =<< getElementById "container-3" doc
  render (counter {}) container1
  render (counter { label: "Push me!" }) container2
  render (counter { label: "Answer everything", count: 42 }) container3

  where
    fromJust' :: Maybe ~> Effect
    fromJust' = maybe (throw "Container element not found.") pure

