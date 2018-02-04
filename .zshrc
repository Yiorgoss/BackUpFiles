# Created by newuser for 5.4.2


export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

alias c='clear'

alias ll='ls -la'
alias ls.='ls -d .* --color=auto'
alias lt='ls -At1 && echo "----OLDEST----"'
alias ltr='ls -Art1 && echo "----NEWEST----"'

alias grep='grep --color=auto'

alias su='sudo'

zstyle -e ':completion:*:default' list-colors ' reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==00=00}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*' menu select

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

