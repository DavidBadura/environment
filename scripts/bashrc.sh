#!/bin/bash

if ! [ "`type -t __git_ps1`" == 'function' ]
    then
        curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

timestamp=$(date +'%Y%m%d_%H%M%S')

[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.${timestamp}

ln -sf ~/environment/files/bashrc ~/.bashrc
ln -sf ~/environment/files/tmux.conf ~/.tmux.conf
