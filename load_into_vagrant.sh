#!/bin/sh

set -e
set -x

cd /home/vagrant

cp -r /hosthome/.bash_it .
ln -s .bash_it/vim .vim
ln -s .bash_it/vimrc .vimrc
ln -s .bash_it/tmux.conf .tmux.conf
rm -f .bashrc
ln -s .bash_it/bash_profile .bashrc
sed -i'' \
    -e 's/window-status-current-bg red/window-status-current-bg blue/' \
    -e '/set -g prefix C-a/d' \
    -e '/unbind-key C-b/d' \
    -e '/bind-key C-a send-prefix/d' \
    .tmux.conf
