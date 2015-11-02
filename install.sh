#!/bin/bash

set -e

function setup() {
echo Copying vimrc...
cp vimrc ~/.vimrc

echo Installing vundle...
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo Installing plugins
vim +PluginInstall +qall
}

function compile_ycm {
echo Compiling YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
echo
echo "If there was an error (e.g. missing CMake), you can try again by running"
echo "  ./install.sh --ycm"
}

if [[ $1 == '--ycm' ]]; then
    compile_ycm
else
    setup
    compile_ycm
fi

echo Done.
