# purescript-react-basic

This package implements an opinionated set of bindings to the React library, optimizing for the most basic use cases.

## Features 

- All React DOM elements and attributes are supported.
- An intuitive API for specifying props - no arrays of key value pairs, just records.
- Attributes are optional, but type-checked. It is a type error to specify `href` as an integer, for example.

## Getting Started

You can install this package using Bower:

```
bower install git@github.com:lumihq/purescript-react-basic.git
```

Here is an example component which renders a label read from props along with a counter:

```purescript
module React.Basic.Example where

import Prelude

import Data.Function.Uncurried (mkEffFn1)
import React.Basic as R

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- The internal state of the component
type ExampleState =
  { counter :: Int
  }

-- Create a component by passing a record to the `react` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
example :: R.ReactComponent ExampleProps
example = R.react
  { initialState: \_ -> { counter: 0 }
  , render: \{ label } { counter } setState ->
      R.button { onClick: mkEffFn1 \_ -> do
                            setState { counter: counter + 1 }
               }
               [ R.text (label <> ": " <> show counter) ]
  }
```

This component can be used directly from JavaScript. For example, if you are using `purs-loader`:

```javascript
import {example as Example} from 'React.Basic.Example.purs';

const myComponent = () => (
  <Example label='Increment' />
);
```
