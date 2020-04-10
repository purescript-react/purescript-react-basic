# Optional Props Example

## Building

This example uses:

- purescript
- spago
- yarn
- nodejs

To provision these tools, we assume [Nix package manager](https://nixos.org/nix/) installed on your local environment.

See [Installation](https://nixos.org/nix/manual/#chap-installation) for details.


```
make
```

This will compile the PureScript source files, bundle them, and use Browserify to combine PureScript and NPM sources into a single bundle.

Then open `html/index.html` in your browser.
