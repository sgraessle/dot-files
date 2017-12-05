[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:$PATH
export PATH=$PATH:~/bin/Zynga.Tools.Zpup2

export TRANSPORTER_HOME=`xcode-select --print-path`/../Applications/Application\\\ Loader.app/Contents/MacOS/itms/bin
export PAGER=less
export LESS="-FRXSei -x4"
export CLICOLOR=1
export EDITOR=vim
export LIQUIBASE_HOME=/usr/local/Cellar/liquibase/3.4.2/libexec

eval "$(hub alias -s)"
