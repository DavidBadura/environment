export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='[\t] \[\e[32m\]\u@\H\[\e[0m\] \[\e[33m\]\w\[\e[0m\] $(__git_ps1 "@%s") \n\$ '

alias ll='ls -lah --color=auto'
