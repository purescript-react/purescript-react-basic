# purescript-react-basic

[![Build Status](https://travis-ci.org/lumihq/purescript-react-basic.svg?branch=master)](https://travis-ci.org/lumihq/purescript-react-basic)

This package implements an opinionated set of bindings over [React](https://reactjs.org), optimizing for correctness and simplifying basic use cases.

_A note about React hooks: Hooks are arriving in stable React soon. The API presented here is the more traditional `setState`+lifecycles style React's had for a long time. If you'd like to experiment with the hooks API in react-basic, have a look at [react-basic-hooks](https://github.com/spicydonuts/purescript-react-basic-hooks). It can be installed and used along side this library, but don't forget it's a preview release!_

## Features

- All React DOM elements and attributes are supported (soon, events are a work in progress).
- An intuitive API for specifying props - simple records, no arrays of key value pairs.
- Attributes are optional, but type-checked. It is a type error to specify `href` as an integer, for example.
- Both `setState` and an action/update pattern for local component state, inspired by [ReasonReact](https://reasonml.github.io/reason-react/).
- React lifecycles are available, but not in your way when you don't need them.

## Getting Started

You can install this package using Bower:

```sh
bower install --save purescript-react-basic
```

Or clone/fork the [starter project](https://github.com/lumihq/react-basic-starter).

See [the documentation](https://pursuit.purescript.org/packages/purescript-react-basic/docs/React.Basic) for an overview of the API or take a look at these examples:

- [A counter](./examples/counter/src/Counter.purs)
- [A controlled input](./examples/controlled-input/src/ControlledInput.purs)
- [Components](./examples/component/src/ToggleButton.purs) in [components](./examples/component/src/Container.purs)
- [Using action/update](./examples/actions/src/Actions.purs)

## Migrating from v7 to v8

v8 removes the required `update` function from the component spec and replaces `send self Action` with the `self.setState` API. Existing components using `update` can create a `send` function using the `runUpdate` function added in v8. See [the actions example](./examples/actions/src/Actions.purs) for an example of this. Alternatively, [this comment](https://github.com/lumihq/purescript-react-basic/pull/73#issuecomment-456486249) shows a few other possible upgrade paths.

## Migrating from v2/v3

`React.Basic.Compat` is a new (but deprecated) module. It matches most of the old API and types (except `setStateThen` and `isFirstMount`) to make upgrading easier and more gradual. You can find `^import\sReact\.Basic\b` and replace with `import React.Basic.Compat`, upgrade the package version, and proceed from there one component at a time (or only new components). See the documentation link above for more info on the new API.
