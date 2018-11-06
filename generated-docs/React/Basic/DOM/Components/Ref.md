## Module React.Basic.DOM.Components.Ref

This module provides an efficient (no `ReactDOM.findDOMNode`) and
declarative way to aquire a `Node` for an element in your render
tree.

For both type safety and performance reasons, `ref` will always
provide a reference to its own `<react-basic-ref>` `Node`, but you
can use this `Node` with `querySelector` to find more specific local
elements.

For example:

```purs
render self =
  ref \myRef ->
    case myRef of
      Nothing -> R.text "DOM render in progress..."
      Just _  -> R.text "DOM render complete."
```

#### `ref`

``` purescript
ref :: (Maybe Node -> JSX) -> JSX
```


