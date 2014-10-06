source /etc/bashrc
source /usr/local/etc/profile.d/colorsvn-env.sh

export PATH=~/bin:/usr/local/pear/bin:$PATH

export PHPRC=~/.phpini

export EDITOR=/usr/bin/vim

alias gst='git status'
alias glo='git log --graph --oneline --branches --remotes --tags --decorate'
alias gciam='git commit -am'
alias gdw='git diff -w'

export CLICOLOR=1

source ~/bin/git-prompt.sh


alias sniff='find /Users/smcmillan/Documents/Development/montage/www -name '*.php' -exec phpcs \{} \;'
alias cdmo='cd /Users/smcmillan/Documents/Development/montage/'
alias review='git log --since=yesterday -p --reverse --patience --ignore-all-space'
alias review-week='git log --since="last friday" -p --reverse --patience --ignore-all-space'
