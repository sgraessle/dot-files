HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify rm_star_silent
unsetopt beep
bindkey -v
bindkey -M viins '\e.' insert-last-word

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

source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh

# default to filename completion if all else fails
zstyle ':completion:*' completer _complete _ignored _files

autoload -U +X bashcompinit && bashcompinit

PROMPT='%F{green}❯%f '

autoload -Uz add-zsh-hook
function xterm_title_precmd () {
    print -Pn "\e]0;%~\a"
}
if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
fi

DEFAULT_USER=sgraessle
export LESS=-RFXe

export GOPATH=$HOME/go

alias zpup=~/bin/Zynga.Tools.Zpup2/zpup2.sh
alias vim=nvim
alias fl="bundle exec fastlane"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/sgraessle/code/InstaPoker/node_modules/ATG-Turns/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/sgraessle/code/InstaPoker/node_modules/ATG-Turns/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/sgraessle/code/InstaPoker/node_modules/ATG-Turns/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/sgraessle/code/InstaPoker/node_modules/ATG-Turns/node_modules/tabtab/.completions/sls.zsh

complete -o nospace -C /usr/local/Cellar/terraform/0.11.8/bin/terraform terraform
export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"
