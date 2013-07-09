set -x TERM screen-256color
set -x EDITOR nano

set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

alias p project
