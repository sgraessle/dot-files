# config for interactive sessions
[[ -r ~/.bashrc ]] && . ~/.bashrc

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export LC_CTYPE=en_US.UTF-8
export MANPATH=/usr/local/man:${MANPATH}
export PAGER=less
export LESS="-iSx4 -FerX"

# fix stale window titles
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
export PS1='[\u@\h \W]\$ '

#export DYLD_INSERT_LIBRARIES=/Users/sgraessle/dev/stderred/lib64/stderred.so DYLD_FORCE_FLAT_NAMESPACE=1

alias vi='vim -X' # don't let vim try to connect to X
alias uuidgen='uuidgen | tr A-Z a-z'
alias flush="rm -f ~/dev/family/Server/tmp/zpaas/* && echo flush_all | nc localhost 11211"

shopt -s cdspell
shopt -s histappend

. /Users/sgraessle/Library/alchemy-darwin-v0.5a/alchemy-setup

mwiki() { dig +short txt "$*".wp.dg.cx; }
