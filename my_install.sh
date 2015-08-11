#!/bin/bash

set -e
set -x

if [[ -f $HOME/.BASH_IT ]]; then
    >&2 echo 'Existing installation detected; bailing.'
    exit 1
fi

touch $HOME/.BASH_IT

ln -s .vim $HOME/.vim
ln -s vimrc $HOME/.vimrc
ln -s tmux.conf $HOME/.tmux.conf

cat bash_profile >> $HOME/.bashrc
if [[ $(whoami) = vagrant ]]; then
    sed -i'' \
        -e 's/window-status-current-bg red/window-status-current-bg blue/' \
        -e '/set -g prefix C-a/d' \
        -e '/unbind-key C-b/d' \
        -e '/bind-key C-a send-prefix/d' \
        tmux.conf
fi

echo 'Installation successful!'

