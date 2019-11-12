#!/bin/bash

git config --global user.name "David Badura"
git config --global user.email "d.a.badura@gmail.com"
git config --global color.ui auto
git config --global core.editor vim
git config --global core.excludesfile '~/environment/files/gitignore'
git config --global push.default "current"
git config --global branch.autosetuprebase always
git config --global fetch.prune true
git config --global pull.rebase true
git config --global rebase.autoStash true
git config --global rerere.enabled true
git config --global diff.colorMoved plain

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch

git config --global alias.up "push -u"
git config --global alias.pu "pull --rebase"
git config --global alias.undo "reset HEAD~1 --mixed"
git config --global alias.amend "commit -a --amend"
git config --global alias.aa "add -A"
git config --global alias.fu "reset --hard"
git config --global alias.squash '!f() { git reset --soft $(git merge-base HEAD $1) && git commit -m "$2"; }; f'
git config --global alias.cleanup '!f() { git checkout master && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d; }; f'
git config --global alias.fix '!f() { git branch --set-upstream-to=origin/$(git rev-parse --abbrev-ref HEAD) $(git rev-parse --abbrev-ref HEAD); }; f'

git config --global alias.staged 'diff --cached'
git config --global alias.graph "log --graph --all --pretty=format:'%Cred%h%Creset - %Cgreen(%cr)%Creset %s%C(yellow)%d%Creset' --abbrev-commit --date=relative"
git config --global alias.changes "!git log --name-status HEAD.."
