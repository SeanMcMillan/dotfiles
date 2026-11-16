#!/bin/sh

repo=$(cd "$(dirname "$0")/.." && pwd)
projects=$(dirname "$repo")

ln -sn "$repo/.bashrc" ~/.bashrc
ln -sn "$repo/.zshrc" ~/.zshrc
ln -sn "$repo/.aliases" ~/.aliases
ln -sn "$repo/.gitconfig" ~/.gitconfig
ln -sn "$repo/.gitignore_global" ~/.gitignore_global
ln -sn "$repo/.profile" ~/.profile
ln -sn "$repo/.vim" ~/.vim
ln -sn "$repo/.vimrc" ~/.vimrc

ln -sn "$repo/bin" ~/bin

mkdir -p ~/.claude/hooks
ln -sn "$repo/claude/settings.json" ~/.claude/settings.json
ln -sn "$repo/claude/statusline-command.sh" ~/.claude/statusline-command.sh
ln -sn "$projects/quiet-guardrails/hooks/guard-bash-overreach.sh" ~/.claude/hooks/guard-bash-overreach.sh
ln -sn "$projects/quiet-guardrails/hooks/guard-write-overreach.sh" ~/.claude/hooks/guard-write-overreach.sh
