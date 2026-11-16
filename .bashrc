#source /etc/bashrc
#source /usr/local/etc/profile.d/colorsvn-env.sh

# export PATH=./vendor/bin:./node_modules/.bin:~/bin

# export PHPRC=~/.phpini

source $HOME/.shellrc
source $HOME/.aliases

HISTSIZE=100000
HISTFILESIZE=100000
HISTTIMEFORMAT='%F %T '
shopt -s histappend

[ -f /usr/share/bash-completion/completions/git ] && source /usr/share/bash-completion/completions/git

# fancy git prompt
if command -v starship >/dev/null; then
    eval "$(starship init bash)"
else
    source ~/bin/git-prompt.sh
fi

export MOZ_ENABLE_WAYLAND=0
