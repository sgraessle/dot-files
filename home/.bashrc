complete -C aws_completer aws

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    PS1='\w$(__git_ps1 " (%s)")\$ '
fi

shopt -s histappend

export GOPATH=$HOME/work

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
