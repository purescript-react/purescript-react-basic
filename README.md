# purescript-react-basic

[![Build Status](https://travis-ci.org/lumihq/purescript-react-basic.svg?branch=master)](https://travis-ci.org/lumihq/purescript-react-basic)

This package implements an opinionated set of bindings over [React](https://reactjs.org), optimizing for correctness and simplifying basic use cases.

## Features

- All React DOM elements and attributes are supported (soon, events are a work in progress).
- An intuitive API for specifying props - simple records, no arrays of key value pairs.
- Attributes are optional, but type-checked. It is a type error to specify `href` as an integer, for example.
- An action/update pattern for local component state, inspired by [ReasonReact](https://reasonml.github.io/reason-react/).
- React lifecycles are available, but not in your way when you don't need them.
- Typeclasses, like `Eq props`, can be used in component definitions.

## Getting Started

You can install this package using Bower:

```sh
bower install purescript-react-basic
```

Or clone/fork the [starter project](https://github.com/lumihq/react-basic-starter).

See [the documentation](https://pursuit.purescript.org/packages/purescript-react-basic/docs/React.Basic) for a detailed overview, or take a look at one of the examples:

- [A Counter](./examples/counter/src/Counter.purs)
- [A controlled input](./examples/controlled-input/src/ControlledInput.purs)
- [Components](./examples/component/src/ToggleButton.purs) in [components](./examples/component/src/Container.purs)

## Migrating from v2 or v3

`React.Basic.Compat` is a new (but deprecated) module. It matches most of the old API and types (except `setStateThen` and `isFirstMount`) to make upgrading easier and more gradual. You can find `^import\sReact\.Basic\b` and replace with `import React.Basic.Compat`, upgrade the package version, and proceed from there one component at a time (or only new components). See the documentation link above for more info on the new API.
