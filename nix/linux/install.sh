sh <(curl -L https://nixos.org/nix/install) --daemon

# Try it! Open a new terminal, and type:
sudo nix-daemon
# or try  with
sudo /nix/var/nix/profiles/default/bin/nix-daemon

# Now test it
nix-env --version
nix-shell -p nix-info --run "nix-info -m"
