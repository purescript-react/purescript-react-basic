module Main where

import Prelude

import Container (mkToggleButtonContainer)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)
import React.Basic.Hooks(element)
import React.Basic.DOM (render)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

main :: Effect Unit
main = do
  container <- getElementById "container" =<< (map toNonElementParentNode $ document =<< window)
  case container of
    Nothing -> throw "Container element not found."
    Just c  -> do
      toggleButtonContainer <- mkToggleButtonContainer
      let app = element toggleButtonContainer {}
      render app c
