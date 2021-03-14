#!/usr/bin/zsh

# https://github.com/nvbn/thefuck
install_the_fuck() {
  sudo apt update
  sudo apt install python3-dev python3-pip python3-setuptools
  sudo pip3 install thefuck
}

# Save this in .zshrc
eval_fk() {
  eval $(thefuck --alias)
  eval $(thefuck --alias fk)
}
