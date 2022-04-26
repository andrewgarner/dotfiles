set -g fish_greeting
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

alias d docker
alias dc docker-compose
alias e emacs
alias ec emacsclient
alias g "git"
alias git "hub"

# Setting PATH for Python 3.10
# set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"
set -g fish_user_paths "/Library/Frameworks/Python.framework/Versions/3.10/bin" $fish_user_paths
