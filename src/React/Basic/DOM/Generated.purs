-- | ----------------------------------------
-- | THIS FILE IS GENERATED -- DO NOT EDIT IT
-- | ----------------------------------------

module React.Basic.DOM.Generated where

import Data.Nullable (Nullable)
import Foreign.Object (Object)
import Prim.Row (class Union)
import Web.DOM (Node)
import React.Basic (JSX, ReactComponent, Ref, element)
import React.Basic.DOM.Internal (CSS, unsafeCreateDOMComponent)
import React.Basic.Events (EventHandler)

type Props_a =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , coords :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , download :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , href :: String
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , rel :: String
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , shape :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , target :: String
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

a
  :: forall attrs attrs_
   . Union attrs attrs_ Props_a
  => Record attrs
  -> JSX
a = element a'

a'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_a
  => ReactComponent (Record attrs)
a' = unsafeCreateDOMComponent "a"

a_ :: Array JSX -> JSX
a_ children = a { children }

type Props_abbr =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

abbr
  :: forall attrs attrs_
   . Union attrs attrs_ Props_abbr
  => Record attrs
  -> JSX
abbr = element abbr'

abbr'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_abbr
  => ReactComponent (Record attrs)
abbr' = unsafeCreateDOMComponent "abbr"

abbr_ :: Array JSX -> JSX
abbr_ children = abbr { children }

type Props_address =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

address
  :: forall attrs attrs_
   . Union attrs attrs_ Props_address
  => Record attrs
  -> JSX
address = element address'

address'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_address
  => ReactComponent (Record attrs)
address' = unsafeCreateDOMComponent "address"

address_ :: Array JSX -> JSX
address_ children = address { children }

type Props_area =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , alt :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , coords :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , download :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , href :: String
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , rel :: String
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , shape :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , target :: String
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

area
  :: forall attrs attrs_
   . Union attrs attrs_ Props_area
  => Record attrs
  -> JSX
area = element area'

area'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_area
  => ReactComponent (Record attrs)
area' = unsafeCreateDOMComponent "area"

type Props_article =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

article
  :: forall attrs attrs_
   . Union attrs attrs_ Props_article
  => Record attrs
  -> JSX
article = element article'

article'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_article
  => ReactComponent (Record attrs)
article' = unsafeCreateDOMComponent "article"

article_ :: Array JSX -> JSX
article_ children = article { children }

type Props_aside =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

aside
  :: forall attrs attrs_
   . Union attrs attrs_ Props_aside
  => Record attrs
  -> JSX
aside = element aside'

aside'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_aside
  => ReactComponent (Record attrs)
aside' = unsafeCreateDOMComponent "aside"

aside_ :: Array JSX -> JSX
aside_ children = aside { children }

type Props_audio =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , controls :: Boolean
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , loop :: Boolean
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , muted :: Boolean
  , noValidate :: Boolean
  , onAbort :: EventHandler
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onCanPlay :: EventHandler
  , onCanPlayThrough :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onDurationChange :: EventHandler
  , onEmptied :: EventHandler
  , onEncrypted :: EventHandler
  , onEnded :: EventHandler
  , onError :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLoadStart :: EventHandler
  , onLoadedData :: EventHandler
  , onLoadedMetadata :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPause :: EventHandler
  , onPlay :: EventHandler
  , onPlaying :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onProgress :: EventHandler
  , onRateChange :: EventHandler
  , onScroll :: EventHandler
  , onSeeked :: EventHandler
  , onSeeking :: EventHandler
  , onSelect :: EventHandler
  , onStalled :: EventHandler
  , onSubmit :: EventHandler
  , onSuspend :: EventHandler
  , onTimeUpdate :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onVolumeChange :: EventHandler
  , onWaiting :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , preload :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

audio
  :: forall attrs attrs_
   . Union attrs attrs_ Props_audio
  => Record attrs
  -> JSX
audio = element audio'

audio'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_audio
  => ReactComponent (Record attrs)
audio' = unsafeCreateDOMComponent "audio"

audio_ :: Array JSX -> JSX
audio_ children = audio { children }

type Props_b =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

b
  :: forall attrs attrs_
   . Union attrs attrs_ Props_b
  => Record attrs
  -> JSX
b = element b'

b'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_b
  => ReactComponent (Record attrs)
b' = unsafeCreateDOMComponent "b"

b_ :: Array JSX -> JSX
b_ children = b { children }

type Props_base =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , href :: String
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , target :: String
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

base
  :: forall attrs attrs_
   . Union attrs attrs_ Props_base
  => Record attrs
  -> JSX
base = element base'

base'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_base
  => ReactComponent (Record attrs)
base' = unsafeCreateDOMComponent "base"

type Props_bdi =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

bdi
  :: forall attrs attrs_
   . Union attrs attrs_ Props_bdi
  => Record attrs
  -> JSX
bdi = element bdi'

bdi'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_bdi
  => ReactComponent (Record attrs)
bdi' = unsafeCreateDOMComponent "bdi"

bdi_ :: Array JSX -> JSX
bdi_ children = bdi { children }

type Props_bdo =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

bdo
  :: forall attrs attrs_
   . Union attrs attrs_ Props_bdo
  => Record attrs
  -> JSX
bdo = element bdo'

bdo'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_bdo
  => ReactComponent (Record attrs)
bdo' = unsafeCreateDOMComponent "bdo"

bdo_ :: Array JSX -> JSX
bdo_ children = bdo { children }

type Props_blockquote =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , cite :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

blockquote
  :: forall attrs attrs_
   . Union attrs attrs_ Props_blockquote
  => Record attrs
  -> JSX
blockquote = element blockquote'

blockquote'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_blockquote
  => ReactComponent (Record attrs)
blockquote' = unsafeCreateDOMComponent "blockquote"

blockquote_ :: Array JSX -> JSX
blockquote_ children = blockquote { children }

type Props_body =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

body
  :: forall attrs attrs_
   . Union attrs attrs_ Props_body
  => Record attrs
  -> JSX
body = element body'

body'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_body
  => ReactComponent (Record attrs)
body' = unsafeCreateDOMComponent "body"

body_ :: Array JSX -> JSX
body_ children = body { children }

type Props_br =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

br
  :: forall attrs attrs_
   . Union attrs attrs_ Props_br
  => Record attrs
  -> JSX
br = element br'

br'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_br
  => ReactComponent (Record attrs)
br' = unsafeCreateDOMComponent "br"

type Props_button =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

button
  :: forall attrs attrs_
   . Union attrs attrs_ Props_button
  => Record attrs
  -> JSX
button = element button'

button'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_button
  => ReactComponent (Record attrs)
button' = unsafeCreateDOMComponent "button"

button_ :: Array JSX -> JSX
button_ children = button { children }

type Props_canvas =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

canvas
  :: forall attrs attrs_
   . Union attrs attrs_ Props_canvas
  => Record attrs
  -> JSX
canvas = element canvas'

canvas'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_canvas
  => ReactComponent (Record attrs)
canvas' = unsafeCreateDOMComponent "canvas"

canvas_ :: Array JSX -> JSX
canvas_ children = canvas { children }

type Props_caption =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

caption
  :: forall attrs attrs_
   . Union attrs attrs_ Props_caption
  => Record attrs
  -> JSX
caption = element caption'

caption'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_caption
  => ReactComponent (Record attrs)
caption' = unsafeCreateDOMComponent "caption"

caption_ :: Array JSX -> JSX
caption_ children = caption { children }

type Props_cite =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

cite
  :: forall attrs attrs_
   . Union attrs attrs_ Props_cite
  => Record attrs
  -> JSX
cite = element cite'

cite'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_cite
  => ReactComponent (Record attrs)
cite' = unsafeCreateDOMComponent "cite"

cite_ :: Array JSX -> JSX
cite_ children = cite { children }

type Props_code =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

code
  :: forall attrs attrs_
   . Union attrs attrs_ Props_code
  => Record attrs
  -> JSX
code = element code'

code'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_code
  => ReactComponent (Record attrs)
code' = unsafeCreateDOMComponent "code"

code_ :: Array JSX -> JSX
code_ children = code { children }

type Props_col =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , span :: Int
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

col
  :: forall attrs attrs_
   . Union attrs attrs_ Props_col
  => Record attrs
  -> JSX
col = element col'

col'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_col
  => ReactComponent (Record attrs)
col' = unsafeCreateDOMComponent "col"

type Props_colgroup =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , span :: Int
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

colgroup
  :: forall attrs attrs_
   . Union attrs attrs_ Props_colgroup
  => Record attrs
  -> JSX
colgroup = element colgroup'

colgroup'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_colgroup
  => ReactComponent (Record attrs)
colgroup' = unsafeCreateDOMComponent "colgroup"

colgroup_ :: Array JSX -> JSX
colgroup_ children = colgroup { children }

type Props_data =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

data'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_data
  => Record attrs
  -> JSX
data' = element data''

data''
  :: forall attrs attrs_
   . Union attrs attrs_ Props_data
  => ReactComponent (Record attrs)
data'' = unsafeCreateDOMComponent "data"

data_ :: Array JSX -> JSX
data_ children = data' { children }

type Props_datalist =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

datalist
  :: forall attrs attrs_
   . Union attrs attrs_ Props_datalist
  => Record attrs
  -> JSX
datalist = element datalist'

datalist'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_datalist
  => ReactComponent (Record attrs)
datalist' = unsafeCreateDOMComponent "datalist"

datalist_ :: Array JSX -> JSX
datalist_ children = datalist { children }

type Props_dd =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

dd
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dd
  => Record attrs
  -> JSX
dd = element dd'

dd'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dd
  => ReactComponent (Record attrs)
dd' = unsafeCreateDOMComponent "dd"

dd_ :: Array JSX -> JSX
dd_ children = dd { children }

type Props_del =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , cite :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

del
  :: forall attrs attrs_
   . Union attrs attrs_ Props_del
  => Record attrs
  -> JSX
del = element del'

del'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_del
  => ReactComponent (Record attrs)
del' = unsafeCreateDOMComponent "del"

del_ :: Array JSX -> JSX
del_ children = del { children }

type Props_details =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , open :: Boolean
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

details
  :: forall attrs attrs_
   . Union attrs attrs_ Props_details
  => Record attrs
  -> JSX
details = element details'

details'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_details
  => ReactComponent (Record attrs)
details' = unsafeCreateDOMComponent "details"

details_ :: Array JSX -> JSX
details_ children = details { children }

type Props_dfn =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

dfn
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dfn
  => Record attrs
  -> JSX
dfn = element dfn'

dfn'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dfn
  => ReactComponent (Record attrs)
dfn' = unsafeCreateDOMComponent "dfn"

dfn_ :: Array JSX -> JSX
dfn_ children = dfn { children }

type Props_dialog =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , open :: Boolean
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

dialog
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dialog
  => Record attrs
  -> JSX
dialog = element dialog'

dialog'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dialog
  => ReactComponent (Record attrs)
dialog' = unsafeCreateDOMComponent "dialog"

dialog_ :: Array JSX -> JSX
dialog_ children = dialog { children }

type Props_div =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

div
  :: forall attrs attrs_
   . Union attrs attrs_ Props_div
  => Record attrs
  -> JSX
div = element div'

div'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_div
  => ReactComponent (Record attrs)
div' = unsafeCreateDOMComponent "div"

div_ :: Array JSX -> JSX
div_ children = div { children }

type Props_dl =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

dl
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dl
  => Record attrs
  -> JSX
dl = element dl'

dl'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dl
  => ReactComponent (Record attrs)
dl' = unsafeCreateDOMComponent "dl"

dl_ :: Array JSX -> JSX
dl_ children = dl { children }

type Props_dt =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

dt
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dt
  => Record attrs
  -> JSX
dt = element dt'

dt'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_dt
  => ReactComponent (Record attrs)
dt' = unsafeCreateDOMComponent "dt"

dt_ :: Array JSX -> JSX
dt_ children = dt { children }

type Props_em =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

em
  :: forall attrs attrs_
   . Union attrs attrs_ Props_em
  => Record attrs
  -> JSX
em = element em'

em'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_em
  => ReactComponent (Record attrs)
em' = unsafeCreateDOMComponent "em"

em_ :: Array JSX -> JSX
em_ children = em { children }

type Props_embed =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

embed
  :: forall attrs attrs_
   . Union attrs attrs_ Props_embed
  => Record attrs
  -> JSX
embed = element embed'

embed'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_embed
  => ReactComponent (Record attrs)
embed' = unsafeCreateDOMComponent "embed"

type Props_fieldset =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

fieldset
  :: forall attrs attrs_
   . Union attrs attrs_ Props_fieldset
  => Record attrs
  -> JSX
fieldset = element fieldset'

fieldset'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_fieldset
  => ReactComponent (Record attrs)
fieldset' = unsafeCreateDOMComponent "fieldset"

fieldset_ :: Array JSX -> JSX
fieldset_ children = fieldset { children }

type Props_figcaption =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

figcaption
  :: forall attrs attrs_
   . Union attrs attrs_ Props_figcaption
  => Record attrs
  -> JSX
figcaption = element figcaption'

figcaption'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_figcaption
  => ReactComponent (Record attrs)
figcaption' = unsafeCreateDOMComponent "figcaption"

figcaption_ :: Array JSX -> JSX
figcaption_ children = figcaption { children }

type Props_figure =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

figure
  :: forall attrs attrs_
   . Union attrs attrs_ Props_figure
  => Record attrs
  -> JSX
figure = element figure'

figure'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_figure
  => ReactComponent (Record attrs)
figure' = unsafeCreateDOMComponent "figure"

figure_ :: Array JSX -> JSX
figure_ children = figure { children }

type Props_footer =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

footer
  :: forall attrs attrs_
   . Union attrs attrs_ Props_footer
  => Record attrs
  -> JSX
footer = element footer'

footer'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_footer
  => ReactComponent (Record attrs)
footer' = unsafeCreateDOMComponent "footer"

footer_ :: Array JSX -> JSX
footer_ children = footer { children }

type Props_form =
  ( _data :: Object String
  , about :: String
  , accept :: String
  , acceptCharset :: String
  , accessKey :: String
  , action :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoComplete :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , method :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInput :: EventHandler
  , onInvalid :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , target :: String
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

form
  :: forall attrs attrs_
   . Union attrs attrs_ Props_form
  => Record attrs
  -> JSX
form = element form'

form'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_form
  => ReactComponent (Record attrs)
form' = unsafeCreateDOMComponent "form"

form_ :: Array JSX -> JSX
form_ children = form { children }

type Props_h1 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h1
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h1
  => Record attrs
  -> JSX
h1 = element h1'

h1'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h1
  => ReactComponent (Record attrs)
h1' = unsafeCreateDOMComponent "h1"

h1_ :: Array JSX -> JSX
h1_ children = h1 { children }

type Props_h2 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h2
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h2
  => Record attrs
  -> JSX
h2 = element h2'

h2'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h2
  => ReactComponent (Record attrs)
h2' = unsafeCreateDOMComponent "h2"

h2_ :: Array JSX -> JSX
h2_ children = h2 { children }

type Props_h3 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h3
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h3
  => Record attrs
  -> JSX
h3 = element h3'

h3'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h3
  => ReactComponent (Record attrs)
h3' = unsafeCreateDOMComponent "h3"

h3_ :: Array JSX -> JSX
h3_ children = h3 { children }

type Props_h4 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h4
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h4
  => Record attrs
  -> JSX
h4 = element h4'

h4'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h4
  => ReactComponent (Record attrs)
h4' = unsafeCreateDOMComponent "h4"

h4_ :: Array JSX -> JSX
h4_ children = h4 { children }

type Props_h5 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h5
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h5
  => Record attrs
  -> JSX
h5 = element h5'

h5'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h5
  => ReactComponent (Record attrs)
h5' = unsafeCreateDOMComponent "h5"

h5_ :: Array JSX -> JSX
h5_ children = h5 { children }

type Props_h6 =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

h6
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h6
  => Record attrs
  -> JSX
h6 = element h6'

h6'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_h6
  => ReactComponent (Record attrs)
h6' = unsafeCreateDOMComponent "h6"

h6_ :: Array JSX -> JSX
h6_ children = h6 { children }

type Props_head =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , profile :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

head
  :: forall attrs attrs_
   . Union attrs attrs_ Props_head
  => Record attrs
  -> JSX
head = element head'

head'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_head
  => ReactComponent (Record attrs)
head' = unsafeCreateDOMComponent "head"

head_ :: Array JSX -> JSX
head_ children = head { children }

type Props_header =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

header
  :: forall attrs attrs_
   . Union attrs attrs_ Props_header
  => Record attrs
  -> JSX
header = element header'

header'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_header
  => ReactComponent (Record attrs)
header' = unsafeCreateDOMComponent "header"

header_ :: Array JSX -> JSX
header_ children = header { children }

type Props_hgroup =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

hgroup
  :: forall attrs attrs_
   . Union attrs attrs_ Props_hgroup
  => Record attrs
  -> JSX
hgroup = element hgroup'

hgroup'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_hgroup
  => ReactComponent (Record attrs)
hgroup' = unsafeCreateDOMComponent "hgroup"

hgroup_ :: Array JSX -> JSX
hgroup_ children = hgroup { children }

type Props_hr =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , size :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

hr
  :: forall attrs attrs_
   . Union attrs attrs_ Props_hr
  => Record attrs
  -> JSX
hr = element hr'

hr'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_hr
  => ReactComponent (Record attrs)
hr' = unsafeCreateDOMComponent "hr"

type Props_html =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , manifest :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

html
  :: forall attrs attrs_
   . Union attrs attrs_ Props_html
  => Record attrs
  -> JSX
html = element html'

html'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_html
  => ReactComponent (Record attrs)
html' = unsafeCreateDOMComponent "html"

html_ :: Array JSX -> JSX
html_ children = html { children }

type Props_i =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

i
  :: forall attrs attrs_
   . Union attrs attrs_ Props_i
  => Record attrs
  -> JSX
i = element i'

i'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_i
  => ReactComponent (Record attrs)
i' = unsafeCreateDOMComponent "i"

i_ :: Array JSX -> JSX
i_ children = i { children }

type Props_iframe =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , sandbox :: String
  , scoped :: Boolean
  , scrolling :: String
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

iframe
  :: forall attrs attrs_
   . Union attrs attrs_ Props_iframe
  => Record attrs
  -> JSX
iframe = element iframe'

iframe'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_iframe
  => ReactComponent (Record attrs)
iframe' = unsafeCreateDOMComponent "iframe"

iframe_ :: Array JSX -> JSX
iframe_ children = iframe { children }

type Props_img =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , alt :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLoad :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , sizes :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

img
  :: forall attrs attrs_
   . Union attrs attrs_ Props_img
  => Record attrs
  -> JSX
img = element img'

img'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_img
  => ReactComponent (Record attrs)
img' = unsafeCreateDOMComponent "img"

type Props_input =
  ( _data :: Object String
  , about :: String
  , accept :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , alt :: String
  , autoCapitalize :: String
  , autoComplete :: String
  , autoCorrect :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , autoSave :: String
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , checked :: Boolean
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , defaultChecked :: String
  , defaultValue :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , list :: String
  , marginHeight :: String
  , marginWidth :: String
  , max :: String
  , maxLength :: Int
  , mediaGroup :: String
  , min :: String
  , minLength :: Int
  , multiple :: Boolean
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , pattern :: String
  , placeholder :: String
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , required :: Boolean
  , resource :: String
  , results :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , size :: Int
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , step :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

input
  :: forall attrs attrs_
   . Union attrs attrs_ Props_input
  => Record attrs
  -> JSX
input = element input'

input'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_input
  => ReactComponent (Record attrs)
input' = unsafeCreateDOMComponent "input"

type Props_ins =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , cite :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

ins
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ins
  => Record attrs
  -> JSX
ins = element ins'

ins'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ins
  => ReactComponent (Record attrs)
ins' = unsafeCreateDOMComponent "ins"

ins_ :: Array JSX -> JSX
ins_ children = ins { children }

type Props_kbd =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

kbd
  :: forall attrs attrs_
   . Union attrs attrs_ Props_kbd
  => Record attrs
  -> JSX
kbd = element kbd'

kbd'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_kbd
  => ReactComponent (Record attrs)
kbd' = unsafeCreateDOMComponent "kbd"

kbd_ :: Array JSX -> JSX
kbd_ children = kbd { children }

type Props_keygen =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , challenge :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

keygen
  :: forall attrs attrs_
   . Union attrs attrs_ Props_keygen
  => Record attrs
  -> JSX
keygen = element keygen'

keygen'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_keygen
  => ReactComponent (Record attrs)
keygen' = unsafeCreateDOMComponent "keygen"

keygen_ :: Array JSX -> JSX
keygen_ children = keygen { children }

type Props_label =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

label
  :: forall attrs attrs_
   . Union attrs attrs_ Props_label
  => Record attrs
  -> JSX
label = element label'

label'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_label
  => ReactComponent (Record attrs)
label' = unsafeCreateDOMComponent "label"

label_ :: Array JSX -> JSX
label_ children = label { children }

type Props_legend =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

legend
  :: forall attrs attrs_
   . Union attrs attrs_ Props_legend
  => Record attrs
  -> JSX
legend = element legend'

legend'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_legend
  => ReactComponent (Record attrs)
legend' = unsafeCreateDOMComponent "legend"

legend_ :: Array JSX -> JSX
legend_ children = legend { children }

type Props_li =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

li
  :: forall attrs attrs_
   . Union attrs attrs_ Props_li
  => Record attrs
  -> JSX
li = element li'

li'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_li
  => ReactComponent (Record attrs)
li' = unsafeCreateDOMComponent "li"

li_ :: Array JSX -> JSX
li_ children = li { children }

type Props_link =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , color :: String
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , href :: String
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , integrity :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , media :: String
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , nonce :: String
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , rel :: String
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scope :: String
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , sizes :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , target :: String
  , title :: String
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

link
  :: forall attrs attrs_
   . Union attrs attrs_ Props_link
  => Record attrs
  -> JSX
link = element link'

link'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_link
  => ReactComponent (Record attrs)
link' = unsafeCreateDOMComponent "link"

type Props_main =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

main
  :: forall attrs attrs_
   . Union attrs attrs_ Props_main
  => Record attrs
  -> JSX
main = element main'

main'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_main
  => ReactComponent (Record attrs)
main' = unsafeCreateDOMComponent "main"

main_ :: Array JSX -> JSX
main_ children = main { children }

type Props_map =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

map
  :: forall attrs attrs_
   . Union attrs attrs_ Props_map
  => Record attrs
  -> JSX
map = element map'

map'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_map
  => ReactComponent (Record attrs)
map' = unsafeCreateDOMComponent "map"

map_ :: Array JSX -> JSX
map_ children = map { children }

type Props_mark =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

mark
  :: forall attrs attrs_
   . Union attrs attrs_ Props_mark
  => Record attrs
  -> JSX
mark = element mark'

mark'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_mark
  => ReactComponent (Record attrs)
mark' = unsafeCreateDOMComponent "mark"

mark_ :: Array JSX -> JSX
mark_ children = mark { children }

type Props_math =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

math
  :: forall attrs attrs_
   . Union attrs attrs_ Props_math
  => Record attrs
  -> JSX
math = element math'

math'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_math
  => ReactComponent (Record attrs)
math' = unsafeCreateDOMComponent "math"

math_ :: Array JSX -> JSX
math_ children = math { children }

type Props_menu =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

menu
  :: forall attrs attrs_
   . Union attrs attrs_ Props_menu
  => Record attrs
  -> JSX
menu = element menu'

menu'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_menu
  => ReactComponent (Record attrs)
menu' = unsafeCreateDOMComponent "menu"

menu_ :: Array JSX -> JSX
menu_ children = menu { children }

type Props_menuitem =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

menuitem
  :: forall attrs attrs_
   . Union attrs attrs_ Props_menuitem
  => Record attrs
  -> JSX
menuitem = element menuitem'

menuitem'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_menuitem
  => ReactComponent (Record attrs)
menuitem' = unsafeCreateDOMComponent "menuitem"

menuitem_ :: Array JSX -> JSX
menuitem_ children = menuitem { children }

type Props_meta =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , content :: String
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

meta
  :: forall attrs attrs_
   . Union attrs attrs_ Props_meta
  => Record attrs
  -> JSX
meta = element meta'

meta'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_meta
  => ReactComponent (Record attrs)
meta' = unsafeCreateDOMComponent "meta"

type Props_meter =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , high :: String
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , low :: String
  , marginHeight :: String
  , marginWidth :: String
  , max :: Number
  , maxLength :: Int
  , mediaGroup :: String
  , min :: Number
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , optimum :: String
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

meter
  :: forall attrs attrs_
   . Union attrs attrs_ Props_meter
  => Record attrs
  -> JSX
meter = element meter'

meter'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_meter
  => ReactComponent (Record attrs)
meter' = unsafeCreateDOMComponent "meter"

meter_ :: Array JSX -> JSX
meter_ children = meter { children }

type Props_nav =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

nav
  :: forall attrs attrs_
   . Union attrs attrs_ Props_nav
  => Record attrs
  -> JSX
nav = element nav'

nav'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_nav
  => ReactComponent (Record attrs)
nav' = unsafeCreateDOMComponent "nav"

nav_ :: Array JSX -> JSX
nav_ children = nav { children }

type Props_noscript =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

noscript
  :: forall attrs attrs_
   . Union attrs attrs_ Props_noscript
  => Record attrs
  -> JSX
noscript = element noscript'

noscript'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_noscript
  => ReactComponent (Record attrs)
noscript' = unsafeCreateDOMComponent "noscript"

noscript_ :: Array JSX -> JSX
noscript_ children = noscript { children }

type Props_object =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , data :: String
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

object
  :: forall attrs attrs_
   . Union attrs attrs_ Props_object
  => Record attrs
  -> JSX
object = element object'

object'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_object
  => ReactComponent (Record attrs)
object' = unsafeCreateDOMComponent "object"

object_ :: Array JSX -> JSX
object_ children = object { children }

type Props_ol =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , reversed :: Boolean
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , start :: Int
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

ol
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ol
  => Record attrs
  -> JSX
ol = element ol'

ol'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ol
  => ReactComponent (Record attrs)
ol' = unsafeCreateDOMComponent "ol"

ol_ :: Array JSX -> JSX
ol_ children = ol { children }

type Props_optgroup =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , label :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

optgroup
  :: forall attrs attrs_
   . Union attrs attrs_ Props_optgroup
  => Record attrs
  -> JSX
optgroup = element optgroup'

optgroup'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_optgroup
  => ReactComponent (Record attrs)
optgroup' = unsafeCreateDOMComponent "optgroup"

optgroup_ :: Array JSX -> JSX
optgroup_ children = optgroup { children }

type Props_option =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , label :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , selected :: Boolean
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

option
  :: forall attrs attrs_
   . Union attrs attrs_ Props_option
  => Record attrs
  -> JSX
option = element option'

option'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_option
  => ReactComponent (Record attrs)
option' = unsafeCreateDOMComponent "option"

option_ :: Array JSX -> JSX
option_ children = option { children }

type Props_output =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

output
  :: forall attrs attrs_
   . Union attrs attrs_ Props_output
  => Record attrs
  -> JSX
output = element output'

output'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_output
  => ReactComponent (Record attrs)
output' = unsafeCreateDOMComponent "output"

output_ :: Array JSX -> JSX
output_ children = output { children }

type Props_p =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

p
  :: forall attrs attrs_
   . Union attrs attrs_ Props_p
  => Record attrs
  -> JSX
p = element p'

p'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_p
  => ReactComponent (Record attrs)
p' = unsafeCreateDOMComponent "p"

p_ :: Array JSX -> JSX
p_ children = p { children }

type Props_param =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

param
  :: forall attrs attrs_
   . Union attrs attrs_ Props_param
  => Record attrs
  -> JSX
param = element param'

param'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_param
  => ReactComponent (Record attrs)
param' = unsafeCreateDOMComponent "param"

type Props_picture =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

picture
  :: forall attrs attrs_
   . Union attrs attrs_ Props_picture
  => Record attrs
  -> JSX
picture = element picture'

picture'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_picture
  => ReactComponent (Record attrs)
picture' = unsafeCreateDOMComponent "picture"

picture_ :: Array JSX -> JSX
picture_ children = picture { children }

type Props_pre =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

pre
  :: forall attrs attrs_
   . Union attrs attrs_ Props_pre
  => Record attrs
  -> JSX
pre = element pre'

pre'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_pre
  => ReactComponent (Record attrs)
pre' = unsafeCreateDOMComponent "pre"

pre_ :: Array JSX -> JSX
pre_ children = pre { children }

type Props_progress =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , max :: Number
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

progress
  :: forall attrs attrs_
   . Union attrs attrs_ Props_progress
  => Record attrs
  -> JSX
progress = element progress'

progress'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_progress
  => ReactComponent (Record attrs)
progress' = unsafeCreateDOMComponent "progress"

progress_ :: Array JSX -> JSX
progress_ children = progress { children }

type Props_q =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , cite :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

q
  :: forall attrs attrs_
   . Union attrs attrs_ Props_q
  => Record attrs
  -> JSX
q = element q'

q'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_q
  => ReactComponent (Record attrs)
q' = unsafeCreateDOMComponent "q"

q_ :: Array JSX -> JSX
q_ children = q { children }

type Props_rb =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

rb
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rb
  => Record attrs
  -> JSX
rb = element rb'

rb'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rb
  => ReactComponent (Record attrs)
rb' = unsafeCreateDOMComponent "rb"

rb_ :: Array JSX -> JSX
rb_ children = rb { children }

type Props_rp =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

rp
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rp
  => Record attrs
  -> JSX
rp = element rp'

rp'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rp
  => ReactComponent (Record attrs)
rp' = unsafeCreateDOMComponent "rp"

rp_ :: Array JSX -> JSX
rp_ children = rp { children }

type Props_rt =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

rt
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rt
  => Record attrs
  -> JSX
rt = element rt'

rt'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rt
  => ReactComponent (Record attrs)
rt' = unsafeCreateDOMComponent "rt"

rt_ :: Array JSX -> JSX
rt_ children = rt { children }

type Props_rtc =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

rtc
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rtc
  => Record attrs
  -> JSX
rtc = element rtc'

rtc'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_rtc
  => ReactComponent (Record attrs)
rtc' = unsafeCreateDOMComponent "rtc"

rtc_ :: Array JSX -> JSX
rtc_ children = rtc { children }

type Props_ruby =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

ruby
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ruby
  => Record attrs
  -> JSX
ruby = element ruby'

ruby'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ruby
  => ReactComponent (Record attrs)
ruby' = unsafeCreateDOMComponent "ruby"

ruby_ :: Array JSX -> JSX
ruby_ children = ruby { children }

type Props_s =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

s
  :: forall attrs attrs_
   . Union attrs attrs_ Props_s
  => Record attrs
  -> JSX
s = element s'

s'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_s
  => ReactComponent (Record attrs)
s' = unsafeCreateDOMComponent "s"

s_ :: Array JSX -> JSX
s_ children = s { children }

type Props_samp =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

samp
  :: forall attrs attrs_
   . Union attrs attrs_ Props_samp
  => Record attrs
  -> JSX
samp = element samp'

samp'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_samp
  => ReactComponent (Record attrs)
samp' = unsafeCreateDOMComponent "samp"

samp_ :: Array JSX -> JSX
samp_ children = samp { children }

type Props_script =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , async :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , defer :: Boolean
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , integrity :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , nonce :: String
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

script
  :: forall attrs attrs_
   . Union attrs attrs_ Props_script
  => Record attrs
  -> JSX
script = element script'

script'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_script
  => ReactComponent (Record attrs)
script' = unsafeCreateDOMComponent "script"

script_ :: Array JSX -> JSX
script_ children = script { children }

type Props_section =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

section
  :: forall attrs attrs_
   . Union attrs attrs_ Props_section
  => Record attrs
  -> JSX
section = element section'

section'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_section
  => ReactComponent (Record attrs)
section' = unsafeCreateDOMComponent "section"

section_ :: Array JSX -> JSX
section_ children = section { children }

type Props_select =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoComplete :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , defaultValue :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , multiple :: Boolean
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , required :: Boolean
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , size :: Int
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  )

select
  :: forall attrs attrs_
   . Union attrs attrs_ Props_select
  => Record attrs
  -> JSX
select = element select'

select'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_select
  => ReactComponent (Record attrs)
select' = unsafeCreateDOMComponent "select"

select_ :: Array JSX -> JSX
select_ children = select { children }

type Props_slot =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

slot
  :: forall attrs attrs_
   . Union attrs attrs_ Props_slot
  => Record attrs
  -> JSX
slot = element slot'

slot'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_slot
  => ReactComponent (Record attrs)
slot' = unsafeCreateDOMComponent "slot"

slot_ :: Array JSX -> JSX
slot_ children = slot { children }

type Props_small =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

small
  :: forall attrs attrs_
   . Union attrs attrs_ Props_small
  => Record attrs
  -> JSX
small = element small'

small'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_small
  => ReactComponent (Record attrs)
small' = unsafeCreateDOMComponent "small"

small_ :: Array JSX -> JSX
small_ children = small { children }

type Props_source =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , media :: String
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , sizes :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

source
  :: forall attrs attrs_
   . Union attrs attrs_ Props_source
  => Record attrs
  -> JSX
source = element source'

source'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_source
  => ReactComponent (Record attrs)
source' = unsafeCreateDOMComponent "source"

type Props_span =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

span
  :: forall attrs attrs_
   . Union attrs attrs_ Props_span
  => Record attrs
  -> JSX
span = element span'

span'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_span
  => ReactComponent (Record attrs)
span' = unsafeCreateDOMComponent "span"

span_ :: Array JSX -> JSX
span_ children = span { children }

type Props_strong =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

strong
  :: forall attrs attrs_
   . Union attrs attrs_ Props_strong
  => Record attrs
  -> JSX
strong = element strong'

strong'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_strong
  => ReactComponent (Record attrs)
strong' = unsafeCreateDOMComponent "strong"

strong_ :: Array JSX -> JSX
strong_ children = strong { children }

type Props_style =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , media :: String
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , nonce :: String
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

style
  :: forall attrs attrs_
   . Union attrs attrs_ Props_style
  => Record attrs
  -> JSX
style = element style'

style'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_style
  => ReactComponent (Record attrs)
style' = unsafeCreateDOMComponent "style"

style_ :: Array JSX -> JSX
style_ children = style { children }

type Props_sub =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

sub
  :: forall attrs attrs_
   . Union attrs attrs_ Props_sub
  => Record attrs
  -> JSX
sub = element sub'

sub'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_sub
  => ReactComponent (Record attrs)
sub' = unsafeCreateDOMComponent "sub"

sub_ :: Array JSX -> JSX
sub_ children = sub { children }

type Props_summary =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

summary
  :: forall attrs attrs_
   . Union attrs attrs_ Props_summary
  => Record attrs
  -> JSX
summary = element summary'

summary'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_summary
  => ReactComponent (Record attrs)
summary' = unsafeCreateDOMComponent "summary"

summary_ :: Array JSX -> JSX
summary_ children = summary { children }

type Props_sup =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

sup
  :: forall attrs attrs_
   . Union attrs attrs_ Props_sup
  => Record attrs
  -> JSX
sup = element sup'

sup'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_sup
  => ReactComponent (Record attrs)
sup' = unsafeCreateDOMComponent "sup"

sup_ :: Array JSX -> JSX
sup_ children = sup { children }


type Props_table =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , summary :: String
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

table
  :: forall attrs attrs_
   . Union attrs attrs_ Props_table
  => Record attrs
  -> JSX
table = element table'

table'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_table
  => ReactComponent (Record attrs)
table' = unsafeCreateDOMComponent "table"

table_ :: Array JSX -> JSX
table_ children = table { children }

type Props_tbody =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

tbody
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tbody
  => Record attrs
  -> JSX
tbody = element tbody'

tbody'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tbody
  => ReactComponent (Record attrs)
tbody' = unsafeCreateDOMComponent "tbody"

tbody_ :: Array JSX -> JSX
tbody_ children = tbody { children }

type Props_td =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , headers :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scope :: String
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

td
  :: forall attrs attrs_
   . Union attrs attrs_ Props_td
  => Record attrs
  -> JSX
td = element td'

td'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_td
  => ReactComponent (Record attrs)
td' = unsafeCreateDOMComponent "td"

td_ :: Array JSX -> JSX
td_ children = td { children }

type Props_template =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

template
  :: forall attrs attrs_
   . Union attrs attrs_ Props_template
  => Record attrs
  -> JSX
template = element template'

template'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_template
  => ReactComponent (Record attrs)
template' = unsafeCreateDOMComponent "template"

template_ :: Array JSX -> JSX
template_ children = template { children }

type Props_textarea =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoCapitalize :: String
  , autoComplete :: String
  , autoCorrect :: String
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , cols :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , defaultValue :: String
  , dir :: String
  , disabled :: Boolean
  , draggable :: Boolean
  , encType :: String
  , form :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , name :: String
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onChange :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , placeholder :: String
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , required :: Boolean
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , rows :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , value :: String
  , vocab :: String
  , wmode :: String
  , wrap :: String
  )

textarea
  :: forall attrs attrs_
   . Union attrs attrs_ Props_textarea
  => Record attrs
  -> JSX
textarea = element textarea'

textarea'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_textarea
  => ReactComponent (Record attrs)
textarea' = unsafeCreateDOMComponent "textarea"

textarea_ :: Array JSX -> JSX
textarea_ children = textarea { children }

type Props_tfoot =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

tfoot
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tfoot
  => Record attrs
  -> JSX
tfoot = element tfoot'

tfoot'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tfoot
  => ReactComponent (Record attrs)
tfoot' = unsafeCreateDOMComponent "tfoot"

tfoot_ :: Array JSX -> JSX
tfoot_ children = tfoot { children }

type Props_th =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , headers :: String
  , height :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scope :: String
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , width :: String
  , wmode :: String
  )

th
  :: forall attrs attrs_
   . Union attrs attrs_ Props_th
  => Record attrs
  -> JSX
th = element th'

th'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_th
  => ReactComponent (Record attrs)
th' = unsafeCreateDOMComponent "th"

th_ :: Array JSX -> JSX
th_ children = th { children }

type Props_thead =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

thead
  :: forall attrs attrs_
   . Union attrs attrs_ Props_thead
  => Record attrs
  -> JSX
thead = element thead'

thead'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_thead
  => ReactComponent (Record attrs)
thead' = unsafeCreateDOMComponent "thead"

thead_ :: Array JSX -> JSX
thead_ children = thead { children }

type Props_time =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

time
  :: forall attrs attrs_
   . Union attrs attrs_ Props_time
  => Record attrs
  -> JSX
time = element time'

time'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_time
  => ReactComponent (Record attrs)
time' = unsafeCreateDOMComponent "time"

time_ :: Array JSX -> JSX
time_ children = time { children }

type Props_title =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

title
  :: forall attrs attrs_
   . Union attrs attrs_ Props_title
  => Record attrs
  -> JSX
title = element title'

title'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_title
  => ReactComponent (Record attrs)
title' = unsafeCreateDOMComponent "title"

title_ :: Array JSX -> JSX
title_ children = title { children }

type Props_tr =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

tr
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tr
  => Record attrs
  -> JSX
tr = element tr'

tr'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_tr
  => ReactComponent (Record attrs)
tr' = unsafeCreateDOMComponent "tr"

tr_ :: Array JSX -> JSX
tr_ children = tr { children }

type Props_track =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , default :: Boolean
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , kind :: String
  , label :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , src :: String
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

track
  :: forall attrs attrs_
   . Union attrs attrs_ Props_track
  => Record attrs
  -> JSX
track = element track'

track'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_track
  => ReactComponent (Record attrs)
track' = unsafeCreateDOMComponent "track"

type Props_u =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

u
  :: forall attrs attrs_
   . Union attrs attrs_ Props_u
  => Record attrs
  -> JSX
u = element u'

u'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_u
  => ReactComponent (Record attrs)
u' = unsafeCreateDOMComponent "u"

u_ :: Array JSX -> JSX
u_ children = u { children }

type Props_ul =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , type :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

ul
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ul
  => Record attrs
  -> JSX
ul = element ul'

ul'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_ul
  => ReactComponent (Record attrs)
ul' = unsafeCreateDOMComponent "ul"

ul_ :: Array JSX -> JSX
ul_ children = ul { children }

type Props_var =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

var
  :: forall attrs attrs_
   . Union attrs attrs_ Props_var
  => Record attrs
  -> JSX
var = element var'

var'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_var
  => ReactComponent (Record attrs)
var' = unsafeCreateDOMComponent "var"

var_ :: Array JSX -> JSX
var_ children = var { children }

type Props_video =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , children :: Array JSX
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

video
  :: forall attrs attrs_
   . Union attrs attrs_ Props_video
  => Record attrs
  -> JSX
video = element video'

video'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_video
  => ReactComponent (Record attrs)
video' = unsafeCreateDOMComponent "video"

video_ :: Array JSX -> JSX
video_ children = video { children }

type Props_wbr =
  ( _data :: Object String
  , about :: String
  , acceptCharset :: String
  , accessKey :: String
  , allowFullScreen :: Boolean
  , allowTransparency :: Boolean
  , autoFocus :: Boolean
  , autoPlay :: Boolean
  , capture :: Boolean
  , cellPadding :: String
  , cellSpacing :: String
  , charSet :: String
  , classID :: String
  , className :: String
  , colSpan :: Int
  , contentEditable :: Boolean
  , contextMenu :: String
  , crossOrigin :: String
  , dangerouslySetInnerHTML :: { __html :: String }
  , datatype :: String
  , dateTime :: String
  , dir :: String
  , draggable :: Boolean
  , encType :: String
  , formAction :: String
  , formEncType :: String
  , formMethod :: String
  , formNoValidate :: Boolean
  , formTarget :: String
  , frameBorder :: String
  , hidden :: Boolean
  , hrefLang :: String
  , htmlFor :: String
  , httpEquiv :: String
  , icon :: String
  , id :: String
  , inlist :: String
  , inputMode :: String
  , is :: String
  , itemID :: String
  , itemProp :: String
  , itemRef :: String
  , itemScope :: Boolean
  , itemType :: String
  , key :: String
  , keyParams :: String
  , keyType :: String
  , lang :: String
  , marginHeight :: String
  , marginWidth :: String
  , maxLength :: Int
  , mediaGroup :: String
  , minLength :: Int
  , noValidate :: Boolean
  , onAnimationEnd :: EventHandler
  , onAnimationIteration :: EventHandler
  , onAnimationStart :: EventHandler
  , onBlur :: EventHandler
  , onClick :: EventHandler
  , onCompositionEnd :: EventHandler
  , onCompositionStart :: EventHandler
  , onCompositionUpdate :: EventHandler
  , onContextMenu :: EventHandler
  , onCopy :: EventHandler
  , onCut :: EventHandler
  , onDoubleClick :: EventHandler
  , onDrag :: EventHandler
  , onDragEnd :: EventHandler
  , onDragEnter :: EventHandler
  , onDragExit :: EventHandler
  , onDragLeave :: EventHandler
  , onDragOver :: EventHandler
  , onDragStart :: EventHandler
  , onDrop :: EventHandler
  , onFocus :: EventHandler
  , onGotPointerCapture :: EventHandler
  , onInvalid :: EventHandler
  , onKeyDown :: EventHandler
  , onKeyPress :: EventHandler
  , onKeyUp :: EventHandler
  , onLostPointerCapture :: EventHandler
  , onMouseDown :: EventHandler
  , onMouseEnter :: EventHandler
  , onMouseLeave :: EventHandler
  , onMouseMove :: EventHandler
  , onMouseOut :: EventHandler
  , onMouseOver :: EventHandler
  , onMouseUp :: EventHandler
  , onPaste :: EventHandler
  , onPointerCancel :: EventHandler
  , onPointerDown :: EventHandler
  , onPointerEnter :: EventHandler
  , onPointerLeave :: EventHandler
  , onPointerMove :: EventHandler
  , onPointerOut :: EventHandler
  , onPointerOver :: EventHandler
  , onPointerUp :: EventHandler
  , onSelect :: EventHandler
  , onSubmit :: EventHandler
  , onTouchCancel :: EventHandler
  , onTouchEnd :: EventHandler
  , onTouchMove :: EventHandler
  , onTouchStart :: EventHandler
  , onTransitionEnd :: EventHandler
  , onWheel :: EventHandler
  , prefix :: String
  , property :: String
  , radioGroup :: String
  , readOnly :: Boolean
  , ref :: Ref (Nullable Node)
  , resource :: String
  , role :: String
  , rowSpan :: Int
  , scoped :: Boolean
  , seamless :: Boolean
  , security :: String
  , spellCheck :: Boolean
  , srcDoc :: JSX
  , srcLang :: String
  , srcSet :: String
  , style :: CSS
  , suppressContentEditableWarning :: Boolean
  , tabIndex :: Int
  , title :: String
  , typeof :: String
  , unselectable :: Boolean
  , useMap :: String
  , vocab :: String
  , wmode :: String
  )

wbr
  :: forall attrs attrs_
   . Union attrs attrs_ Props_wbr
  => Record attrs
  -> JSX
wbr = element wbr'

wbr'
  :: forall attrs attrs_
   . Union attrs attrs_ Props_wbr
  => ReactComponent (Record attrs)
wbr' = unsafeCreateDOMComponent "wbr"
