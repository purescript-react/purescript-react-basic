module Refs where

import Prelude

import Data.Int (round)
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable, null)
import Math (pow, sqrt)
import React.Basic.Hooks(CreateComponent, Ref, Render, UseEffect, UseRef, UseState, Tuple, component, fragment, readRefMaybe, useEffect, useRef, useState, (/\))
import React.Basic.Hooks as React
import React.Basic.DOM as R
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM (Node)
import Web.Event.Event (EventType(..))
import Web.Event.EventTarget (addEventListener, eventListener, removeEventListener)
import Web.HTML (window)
import Web.HTML.HTMLElement (getBoundingClientRect)
import Web.HTML.HTMLElement as HTMLElement
import Web.HTML.Window as Window

mkRefs :: CreateComponent {} (UseNodeDistance (UseNodeDistance (UseNodeDistance Unit)))
mkRefs = do
  component "Refs" \props -> React.do

      mouseDistance1 /\ buttonRef1 <- useNodeDistanceFromMouse
      mouseDistance2 /\ buttonRef2 <- useNodeDistanceFromMouse
      mouseDistance3 /\ buttonRef3 <- useNodeDistanceFromMouse

      React.pure $ fragment
        [ R.button
            { ref: buttonRef1
            , children: [ R.text $ show mouseDistance1 <> "px" ]
            , style: R.css { width: "100px", position: "absolute", top: "20px", left: "200px" }
            }
        , R.button
            { ref: buttonRef2
            , children: [ R.text $ show mouseDistance2 <> "px" ]
            , style: R.css { width: "100px", position: "absolute", top: "60px", left: "40px" }
            }
        , R.button
            { ref: buttonRef3
            , children: [ R.text $ show mouseDistance3 <> "px" ]
            , style: R.css { width: "100px", position: "absolute", top: "120px", left: "90px" }
            }
        ]

type UseNodeDistance hooks = UseEffect (UseState Int (UseRef (Nullable Node) hooks))

useNodeDistanceFromMouse
  :: forall hooks
   . Render
       hooks
       (UseNodeDistance hooks)
       (Tuple Int (Ref (Nullable Node)))
useNodeDistanceFromMouse = React.do
  elementRef <- useRef null
  mouseDistance /\ setMouseDistance <- useState 0

  useEffect [] do
    maybeElement <- map (HTMLElement.fromNode =<< _) (readRefMaybe elementRef)
    case maybeElement of
      Nothing -> pure (pure unit)
      Just element -> do
        mouseMoveListener <- eventListener \e -> do
          { top, bottom, left, right } <- getBoundingClientRect element
          let
            mouseX = (unsafeCoerce e).clientX
            mouseY = (unsafeCoerce e).clientY
            distanceX =
              if mouseX # between left right
                then 0.0
                else if mouseX < left
                  then left - mouseX
                  else mouseX - right
            distanceY =
              if mouseY # between top bottom
                then 0.0
                else if mouseY < top
                  then top - mouseY
                  else mouseY - bottom
            distance = sqrt ((distanceX `pow` 2.0) + (distanceY `pow` 2.0))
          setMouseDistance \_ -> round distance

        let mouseMoveEventType = EventType "mousemove"
        windowEventTarget <- map Window.toEventTarget window
        addEventListener mouseMoveEventType mouseMoveListener false windowEventTarget
        pure do
          removeEventListener mouseMoveEventType mouseMoveListener false windowEventTarget

  React.pure (mouseDistance /\ elementRef)
