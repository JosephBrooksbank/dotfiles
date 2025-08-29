#!/bin/bash

git config --global core.editor "nvim";
git config --global alias.co checkout;
git config --global alias.br branch;
git config --global alias.st status;
git config --global alias.last 'log -1 HEAD';
# create a new branch from latest develop
git config --global alias.nb '!f() { git fetch origin develop:develop && git checkout -b "$1" develop; }; f'
# reset current branch to remote
git config --global alias.rr '!git fetch origin && git reset --hard origin/$(git branch --show-current)'

# https://ma.ttias.be/pretty-git-log-in-one-line/ 
git config --global alias.logline "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

git config --global alias.logs "logline -5"
