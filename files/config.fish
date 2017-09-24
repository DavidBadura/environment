# keep color in less
set LESS -R
# encoding - our one true friend
set LESSCHARSET UTF-8
set LC_CTYPE en_US.UTF-8
set LANG en_US.UTF-8

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
# HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
# shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=1000
# HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

# tmux stuff
set TERM "xterm-256color"
alias tmux="tmux -2"

# settitle() {
    # printf "\033k$1\033\\"
# }
# ssh() {
    # settitle "$*"
    # command ssh "$@"
    # settitle "bash"
# }

alias tm-rename='tmux rename-window `basename $PWD`'

set EDITOR vim
set PATH $PATH $HOME/.composer/vendor/bin $HOME/bin


# Alias
alias ls="ls --group-directories-first --color=auto"
alias l='ls -ahFl'
alias ll='ls -lah'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias apt-get='sudo apt-get'
alias service='sudo service'

alias grep='grep --color=auto --exclude-dir=.svn'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -p'

# Other
alias now='date +"%T"'
alias portsnum='netstat -tan'
alias ports='sudo netstat -tulpen'
alias hisgrep='history | grep --color=auto'
alias syslog='tail -f /var/log/syslog'
alias t='task'
# alias please='sudo "$BASH" -c "$(history -p !!)"'

# git
alias git-delete-merged-branches='git checkout master; and git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
# alias git-show-unrebased-branches='( git br --contains master; git br; } | sort | uniq -u'
alias git-log='git log --name-status'

# symfony2
alias console='php bin/console '

# fast vim (without config) for editing large files
alias vim-fast='vim -u NONE'

# www specials alias
alias www='sudo -u www-data'
alias www-php='sudo -u www-data php'

# theme bobthefish
set -g theme_color_scheme zenburn
set fish_key_bindings fish_vi_key_bindings

# here the user can hook in and
# add personal or host specific configuration
if test -e ~/.config.local.fish
    source ~/.config.local.fish
end

# force svn diff to use a pager
# svn() {
    # if [ x"$1" = xdiff ] || [ x"$1" = xdi ]; then
        # /usr/bin/svn "$@" | less -R
    # else
        # /usr/bin/svn "$@"
    # fi
# }
