HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify rm_star_silent
unsetopt beep
bindkey -v

autoload -U zmv

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

autoload -Uz promptinit && promptinit
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/Users/sgraessle/.zshrc'

autoload -Uz compinit && compinit
# End of lines added by compinstall

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

#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#zstyle ':vcs_info:*' formats " %F{blue}%b(%a)%m%u%c%f"
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
#PROMPT='%F{cyan}%~%f$vcs_info_msg_0_%F{white}%#%f '
PROMPT='%F{green}❯%f '
#PROMPT='%F{green}%#%f '

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn "\e]0;%~\a"
}
if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
fi

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

alias zpup=~/bin/Zynga.Tools.Zpup2/zpup2.sh
alias vim=nvim
alias fl="bundle exec fastlane"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/sgraessle/solitaire/InstaSolitaire/scripts/lib/ZyngaFBInstantSDK/node_modules/ATG-Turns/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/sgraessle/solitaire/InstaSolitaire/scripts/lib/ZyngaFBInstantSDK/node_modules/ATG-Turns/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/sgraessle/solitaire/InstaSolitaire/scripts/lib/ZyngaFBInstantSDK/node_modules/ATG-Turns/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/sgraessle/solitaire/InstaSolitaire/scripts/lib/ZyngaFBInstantSDK/node_modules/ATG-Turns/node_modules/tabtab/.completions/sls.zsh
