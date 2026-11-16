
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

source $HOME/.shellrc
source $HOME/.aliases

# fancy git prompt
command -v starship >/dev/null && eval "$(starship init zsh)"

# python
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# tailscale
# source /opt/homebrew/share/zsh/site-functions

# export BROWSER=firefox

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt INC_APPEND_HISTORY   # write each command as it runs
# or SHARE_HISTORY instead, if you also want live sharing between open shells
setopt EXTENDED_HISTORY     # add timestamps

# Homebrew on mac; distro packages put these under /usr/share
plugin_dir=${HOMEBREW_PREFIX:-/usr}/share
[ -f $plugin_dir/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source $plugin_dir/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f $plugin_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source $plugin_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
