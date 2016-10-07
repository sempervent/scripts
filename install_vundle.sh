#!/bin/bash

# get pretty colors to use in output
. ./colors.sh
# this will install vundle on a new computer

echo -e "Changing directory to $grn ~$end"
cd ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
