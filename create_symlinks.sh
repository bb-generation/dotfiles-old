#!/bin/bash
# ----------------------------------------------------------------------------
# "THE MODIFIED BEER-WARE LICENSE"
# <git@bbgen.net> wrote this file. You can do whatever you want with this stuff.
# If we meet some day, and you think this stuff is worth it, you can buy me a
# beer in return Bernhard Eder
# ----------------------------------------------------------------------------

ln -sf `pwd`/bashrc ~/.bashrc
ln -sf `pwd`/screenrc ~/.screenrc
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/gitconfig ~/.gitconfig
mkdir -p ~/.vim/
ln -sf `pwd`/vim/after ~/.vim/after
ln -sf `pwd`/vim/autoload ~/.vim/autoload
ln -sf `pwd`/vim/doc ~/.vim/doc
ln -sf `pwd`/vim/plugin ~/.vim/plugin

