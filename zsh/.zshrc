###################################
# ZSH
###################################
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source "${ZSH}/oh-my-zsh.sh"

###################################
# FK
###################################
source ~/configs/zsh/thefuck.sh
eval_fk

###################################
# Bazel
###################################
source ~/configs/bazel/install_bazelisk.sh
alias bazel=~/bazelisk/bazelisk.py

###################################
# Python
###################################
source ~/configs/python/pyenv.sh
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PYENV_VERSION=3.7.9

###################################
# Git aliases
###################################
source ~/configs/zsh/git.sh

###################################
# Environment variables
###################################
export EDITOR=nvim