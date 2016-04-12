set -x TERM screen-256color
set -x ALTERNATE_EDITOR ''
set -x EDITOR 'emacsclient -t'
set -x VISUAL 'emacsclient -c -a emacs'

set -x PATH $HOME/.nodenv/shims $HOME/.rbenv/shims /usr/local/bin /usr/local/sbin $PATH

set -x AWS_CONFIG_FILE $HOME/.config/aws
set -x NODE_BUILD_CACHE_PATH $HOME/.nodenv/cache
set -x RUBY_BUILD_CACHE_PATH $HOME/.rbenv/cache
set -x RUBY_CONFIGURE_OPTS --with-readline-dir=(brew --prefix readline)

set -x GOPATH $HOME/.go

if not begin
    [ -f ~/.gpg-agent-info ]
    and kill -0 (cut -d : -f 2 ~/.gpg-agent-info) ^/dev/null
end
    gpg-agent --daemon --no-grab --write-env-file ~/.gpg-agent-info >/dev/null ^&1
end

set -g -x GPG_AGENT_INFO (cut -c 16- ~/.gpg-agent-info)
set -g -x GPG_TTY (tty)

nodenv rehash >/dev/null ^&1
rbenv rehash >/dev/null ^&1

alias b bundle
alias c cucumber
alias e 'emacsclient -t'
alias ec 'emacsclient -c'
alias g git
alias r rake
alias git hub

set fish_greeting

set -g __fish_git_prompt_showupstream 'yes'
set -g __fish_git_prompt_showstashstate 'yes'
set -g __fish_git_prompt_showdirtystate 'yes'

set -g __fish_git_prompt_char_stashstate '↩'
set -g __fish_git_prompt_char_stagedstate '→'
set -g __fish_git_prompt_char_upstream_ahead '↑'
set -g __fish_git_prompt_char_upstream_behind '↓'

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
set -g -x fish_pager_color_completion normal
set -g -x fish_pager_color_description normal
set -g -x fish_pager_color_prefix red --bright
set -g -x fish_pager_color_progress green

bind \cr 'rake'

eval (direnv hook fish)
