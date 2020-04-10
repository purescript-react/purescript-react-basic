{ nixpkgs ? import <nixpkgs> {} }:

let
  inherit (nixpkgs) pkgs;

in

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    purescript
    spago
    yarn
  ];
}
