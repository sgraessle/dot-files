alias ls='ls -G'
alias stamp='date -u "+%Y%m%d%H%M"'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/bin:$PATH:~/bin:/Applications/Android\ Studio.app/sdk/platform-tools:/Applications/Android\ Studio.app/sdk/tools

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export TRANSPORTER_HOME=`xcode-select --print-path`/../Applications/Application\\\ Loader.app/Contents/MacOS/itms/bin

. ~/.git-completion.bash
. ~/.git-prompt.sh
PS1='\w$(__git_ps1 " (%s)")\$ '

export PAGER=less
export LESS="-FRXSeri -x4"

shopt -s histappend
