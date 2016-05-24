export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -e
zstyle :compinstall filename '/Users/scott/.zshrc'

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit

# default to filename completion if all else fails
zstyle ':completion:*' completer _complete _ignored _files

autoload -U +X bashcompinit && bashcompinit
_apex() {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#PROMPT=\$vcs_info_msg_0_'%# '
PROMPT='%F{cyan}%~%f %B%F{white}%#%f%b '

export GOPATH=$HOME/go
