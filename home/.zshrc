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

source /usr/local/share/zsh/site-functions/_aws

# default to filename completion if all else fails
zstyle ':completion:*' completer _complete _ignored _files

autoload -U +X bashcompinit && bashcompinit
function _apex() {
  COMPREPLY=()
  local cur opts
  cur="${COMP_WORDS[COMP_CWORD]}"
  opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}
complete -o default -F _apex apex

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#PROMPT=\$vcs_info_msg_0_'%# '
##PROMPT='%F{cyan}%~%f %B%F{white}%#%f%b '
PROMPT='%F{cyan}%~%f'\$vcs_info_msg_0_' %B%F{white}%#%f%b '
zstyle ':vcs_info:*' formats " %F{blue}%b (%a)%m%u%c%f"

#source $(brew --prefix)/share/antigen.zsh
#antigen use oh-my-zsh
##antigen-bundle arialdomartini/oh-my-git
##antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
#antigen theme "agnoster"

DEFAULT_USER=sgraessle
export LESS=-RFXe

export GOPATH=$HOME/go

alias ws-run="adb shell am start -n com.zynga.scramble/com.zynga.scramble.ui.launch.MainActivity"
alias ws-cleardata="adb shell pm clear com.zynga.scramble"
alias ws-uninstall="adb uninstall com.zynga.scramble"
