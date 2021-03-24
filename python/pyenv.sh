#!/usr/bin/env bash

install_pyenv() {
    git clone https://github.com/pyenv/pyenv.git "${HOME}/.pyenv"
}

add_pyenv_variables_to_zshrc() {
    # Installs pyenv in zsh
    echo 'export PYENV_ROOT="${HOME}/.pyenv"' >> ~/.zshrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc  
}

install_python_37() {
    pyenv install -s 3.7.9
}

install_curses() {
    # You might need this in case of Bazel Latex
    # https://github.com/pyenv/pyenv/issues/240
    sudo apt-get install libncurses5 libncurses5-dev libncursesw5
}