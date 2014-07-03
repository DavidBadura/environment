#!/bin/bash

cd `dirname $0` && source ../config.sh

git config --global user.name "$ENV_GIT_USERNAME"
git config --global user.email "$ENV_GIT_EMAIL"
git config --global color.ui auto
git config --global core.editor vim
git config --global core.excludesfile '~/environment/files/gitignore'
git config --global push.default "current"
git config --global help.autocorrect 1
git config --global branch.autosetuprebase always

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.staged 'diff --cached'
git config --global alias.graph "log --graph --all --pretty=format:'%Cred%h%Creset - %Cgreen(%cr)%Creset %s%C(yellow)%d%Creset' --abbrev-commit --date=relative"
git config --global alias.changes "!git log --name-status HEAD.."
