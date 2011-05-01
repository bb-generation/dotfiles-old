#!/bin/bash

ln -sf `pwd`/bashrc ~/.bashrc
ln -sf `pwd`/screenrc ~/.screenrc
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/gitconfig ~/.gitconfig
mkdir -p ~/.vim/
ln -sf `pwd`/vim/after ~/.vim/after
ln -sf `pwd`/vim/autoload ~/.vim/autoload
ln -sf `pwd`/vim/doc ~/.vim/doc
ln -sf `pwd`/vim/plugin ~/.vim/plugin

