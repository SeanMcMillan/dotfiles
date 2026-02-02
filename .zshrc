
# zsh aoutocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' mwnu select

eval "$(/opt/homebrew/bin/brew shellenv)"

source $HOME/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fancy git prompt
eval "$(starship init zsh)"

# colors for mac

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# tailscale
source /opt/homebrew/share/zsh/site-functions

export BROWSER=firefox
