# purescript-react-basic

[![Build Status](https://travis-ci.org/lumihq/purescript-react-basic.svg?branch=master)](https://travis-ci.org/lumihq/purescript-react-basic)

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

import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.Events as Events

-- The props for the component
type ExampleProps =
  { label :: String
  }

-- Create a component by passing a record to the `react` function.
-- The `render` function takes the props and current state, as well as a
-- state update callback, and produces a document.
component :: ReactComponent ExampleProps
component = react { displayName: "Counter", initialState, receiveProps, render }
  where
    initialState =
      { counter: 0
      }

    receiveProps _ _ _ =
      pure unit

    render props state setState =
      R.button
        { onClick: Events.handler_ do
                     setState \s -> s { counter = s.counter + 1 }
        , children: [ R.text (props.label <> ": " <> show state.counter) ]
        }
```

This component can be used directly from JavaScript. For example, if you are using `purs-loader`:

```jsx
import {example as Example} from 'React.Basic.Example.purs';

const myComponent = () => (
  <Example label='Increment' />
);
```
