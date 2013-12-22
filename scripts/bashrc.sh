#!/bin/bash
curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
echo 'source ~/environment/files/bashrc' >> ~/.bashrc
