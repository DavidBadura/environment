#!/bin/bash

if ! [ "`type -t __git_ps1`" == 'function' ]
    then
        curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
fi

echo 'source ~/environment/files/bashrc' >> ~/.bashrc

ln -sf ~/environment/files/tmux.conf ~/.tmux.conf
