#!/bin/sh

VIM_PATH=$HOME/.vim
VIMRC=$HOME/.vimrc

main() {
    echo "Uninstall vim plugin and all!!"
    rm -rf ${VIM_PATH}
    rm -rf ${VIMRC}
}

main
