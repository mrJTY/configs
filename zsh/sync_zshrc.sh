#! /usr/bin/env bash

sync_zshrc() {
    local d=$(date +%s -u)
    cp ~/.zshrc ~/.zshrc-"${d}".bak
    cp ~/configs/zsh/.zshrc ~/.zshrc
}

sync_zshrc
