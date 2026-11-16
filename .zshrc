
eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

source $HOME/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# fancy git prompt
eval "$(starship init zsh)"

# colors for mac

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# python
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# tailscale
# source /opt/homebrew/share/zsh/site-functions

# export BROWSER=firefox

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"

[ -f ~/.tokens ] && source ~/.tokens

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt INC_APPEND_HISTORY   # write each command as it runs
# or SHARE_HISTORY instead, if you also want live sharing between open shells
setopt EXTENDED_HISTORY     # add timestamps

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh