# config for interactive sessions
[[ -r ~/.bashrc ]] && . ~/.bashrc

export EDITOR=/usr/local/bin/vim
export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad
export LC_CTYPE=en_US.UTF-8
export MANPATH=/usr/local/man:${MANPATH}
export PAGER=less
export LESS="-iSx4 -FerX"

alias uuidgen='uuidgen | tr A-Z a-z'

shopt -s cdspell
shopt -s histappend

. /usr/share/git-core/git-completion.bash
