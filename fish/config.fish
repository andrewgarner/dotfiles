set -x TERM screen-256color
set -x EDITOR nano

set -x PATH $HOME/.rbenv/shims /usr/local/share/npm/bin /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin

rbenv rehash >/dev/null ^&1

alias p project

set fish_greeting

set -g __fish_git_prompt_showupstream "auto"
set -g __fish_git_prompt_showstashstate "1"
set -g __fish_git_prompt_showdirtystate "1"

set -g -x fish_color_autosuggestion normal
set -g -x fish_color_command red
set -g -x fish_color_comment normal
set -g -x fish_color_cwd green
set -g -x fish_color_cwd_root red
set -g -x fish_color_error red --bold
set -g -x fish_color_escape blue
set -g -x fish_color_history_current blue
set -g -x fish_color_match red --bold
set -g -x fish_color_normal white
set -g -x fish_color_operator blue
set -g -x fish_color_param yellow
set -g -x fish_color_quote cyan
set -g -x fish_color_redirection normal
set -g -x fish_color_search_match --background=magenta
set -g -x fish_color_valid_path --underline
