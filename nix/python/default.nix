# shell.nix
# Creates a Python environment with user packages
# https://nixos.wiki/wiki/Python

# To avtivate:
# $ nix-build
# $ nix-shell --pure
{ pkgs ? import <nixpkgs> {} }:
let
  my-python = pkgs.python3;
  python-with-my-packages = my-python.withPackages (p: with p; [
    pandas
    requests
    # other python packages you want
  ]);
in
pkgs.mkShell {
  buildInputs = [
    python-with-my-packages
    # other dependencies
  ];
  shellHook = ''
    PYTHONPATH=${python-with-my-packages}/${python-with-my-packages.sitePackages}
    # maybe set more env-vars
  '';
}
