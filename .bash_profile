# config for interactive sessions
[[ -r ~/.bashrc ]] && . ~/.bashrc

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export LC_CTYPE=en_US.UTF-8
export MANPATH=/usr/local/man:${MANPATH}
export PAGER=less
export LESS="-iSx4 -FerX"

alias uuidgen='uuidgen | tr A-Z a-z'
alias flush="rm -f ~/dev/family/Server/tmp/zpaas/* && echo flush_all | nc localhost 11211"

shopt -s cdspell
shopt -s histappend
