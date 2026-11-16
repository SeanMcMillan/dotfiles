#!/bin/sh

ln -s `pwd`/.bashrc ~/.bashrc
ln -s `pwd`/.zshrc ~/.zshrc
ln -s `pwd`/.aliases ~/.aliases
ln -s `pwd`/.gitconfig ~/.gitconfig
ln -s `pwd`/.gitignore_global  ~/.gitignore_global
ln -s `pwd`/.profile ~/.profile
ln -s `pwd`/.vim ~/.vim 
ln -s `pwd`/.vimrc ~/.vimrc

ln -s `pwd`/bin ~/bin

mkdir -p ~/.claude/hooks
ln -s `pwd`/claude/settings.json ~/.claude/settings.json
ln -s `pwd`/claude/statusline-command.sh ~/.claude/statusline-command.sh
ln -s `cd .. && pwd`/quiet-guardrails/hooks/guard-bash-overreach.sh ~/.claude/hooks/guard-bash-overreach.sh
ln -s `cd .. && pwd`/quiet-guardrails/hooks/guard-write-overreach.sh ~/.claude/hooks/guard-write-overreach.sh
