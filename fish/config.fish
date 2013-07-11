set -x TERM screen-256color
set -x EDITOR nano

set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set PATH /usr/local/share/npm/bin $PATH

alias p project

set fish_greeting

