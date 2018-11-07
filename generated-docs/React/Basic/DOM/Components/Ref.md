## Module React.Basic.DOM.Components.Ref

This module provides an efficient (no `ReactDOM.findDOMNode`) and
declarative way to aquire a `Node` for an element in your render
tree.

For example:

```purs
render self =
  ref \myRef ->
    case myRef of
      Nothing -> R.text "First DOM render in progress..."
      Just _  -> R.text "First DOM render complete."
```

#### `ref`

``` purescript
ref :: (Maybe Node -> JSX) -> JSX
```

#### `selectorRef`

``` purescript
selectorRef :: QuerySelector -> (Maybe Node -> JSX) -> JSX
```


### Re-exported from Web.DOM.ParentNode:

#### `QuerySelector`

``` purescript
newtype QuerySelector
  = QuerySelector String
```

##### Instances
``` purescript
Eq QuerySelector
Ord QuerySelector
Newtype QuerySelector _
```

