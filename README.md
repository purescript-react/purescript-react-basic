# purescript-react-basic

This package implements an opinionated set of bindings to the React library, optimizing for the most basic use cases.

## Features

- All React DOM elements and attributes are supported (soon, events are a work in progress).
- An intuitive API for specifying props - no arrays of key value pairs, just records.
- Attributes are optional, but type-checked. It is a type error to specify `href` as an integer, for example.

## Getting Started

You can install this package using Bower:

```sh
bower install git@github.com:lumihq/purescript-react-basic.git
```

Here is an example component which renders a label read from props along with a counter:

```purescript
module React.Basic.Example where

import Prelude

import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic (ReactComponent, reactComponent)
import React.Basic.DOM as R

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- Create a component by passing a record to the `reactComponent` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
example :: ReactComponent ExampleProps
example = reactComponent
  { initialState: { counter: 0 }
  , receiveProps: \_ _ _ -> pure unit
  , render: \{ label } { counter } setState ->
      R.button { onClick: mkEffFn1 \_ -> do
                            setState \s -> { counter: s.counter + 1 }
               , children: [ R.text (label <> ": " <> show counter) ]
               }
  }
```

This component can be used directly from JavaScript. For example, if you are using `purs-loader`:

```jsx
import {example as Example} from 'React.Basic.Example.purs';

const myComponent = () => (
  <Example label='Increment' />
);
```
