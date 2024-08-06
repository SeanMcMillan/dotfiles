#source /etc/bashrc
#source /usr/local/etc/profile.d/colorsvn-env.sh

export PATH=./vendor/bin:./node_modules/bin:~/bin:/usr/local/pear/bin:$PATH

export PHPRC=~/.phpini

export EDITOR=/usr/bin/vim

alias gst='git status'
alias glo='git log --graph --oneline --branches --remotes --tags --decorate'
alias gciam='git commit -am'
alias gdw='git diff -w'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
export CLICOLOR=1

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

source ~/bin/git-prompt.sh


alias sniff='find /Users/smcmillan/Documents/Development/montage/www -name '*.php' -exec phpcs \{} \;'
alias cdmo='cd /Users/smcmillan/Documents/Development/montage/'
alias review='git log --since=yesterday -p --reverse --patience --ignore-all-space'
alias review-week='git log --since="last friday" -p --reverse --patience --ignore-all-space'

if [ -d "/c/Users/Sean/Documents/Projects/" ] ; then
    alias cdpr='cd /c/Users/Sean/Documents/Projects/'
fi

if [ -d "$HOME/projects" ] ; then
    alias cdpr='cd $HOME/projects/'
fi

alias cd..='cd ..'

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
