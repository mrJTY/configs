# shell.nix
# Creates a Python environment with user packages
# https://nixos.wiki/wiki/Python

# To avtivate:
# $ nix-build
# $ nix-shell --pure
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.neovim
    pkgs.git
    pkgs.gh
  ];
  shellHook = ''
    alias vim=nvim
    alias vi=nvim
    EDITOR=vim
  '';
}
