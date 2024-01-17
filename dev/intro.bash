#!/bin/bash

apt_get_update () {
    sudo apt-get update; 
}

pyenv_setup () {
    sudo apt-get install make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

    rm -fr ~/.pyenv

    curl https://pyenv.run | bash

    cd ~/.nvm
    export PATH="$HOME/.pyenv/bin:$PATH"

    exec $SHELL
}

nvm_setup () {
    rm -rf ~/.nvm

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

    cd ~/.nvm

    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

    exec $SHELL
}

apt_get_update
pyenv_setup
nvm_setup
