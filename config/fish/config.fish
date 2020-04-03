set -gx PATH /usr/local/bin /usr/local/sbin $PATH

set -x TERM screen-256color
set -x ALTERNATE_EDITOR ''
set -x EDITOR 'emacsclient -t'
set -x VISUAL 'emacsclient -c -a emacs'

set -x AWS_CONFIG_FILE $HOME/.config/aws
set -x HOMEBREW_NO_ANALYTICS 1

set -x GOPATH $HOME/.go
set -x NODENV_ROOT /usr/local/var/nodenv
set -x PYENV_ROOT /usr/local/var/pyenv
set -x RBENV_ROOT /usr/local/var/rbenv

if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh

  source (direnv hook fish -|psub)
  source (nodenv init -|psub)
  source (pyenv init -|psub)
  source (pyenv virtualenv-init -|psub)
  source (rbenv init -|psub)
end

alias b bundle
alias c cucumber
alias e 'emacsclient -t'
alias ec 'emacsclient -c'
alias g git
alias r rake
alias git hub

brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)

set fish_greeting

set fish_function_path $fish_function_path '/usr/local/var/pyenv/versions/2.7.15/lib/python2.7/site-packages/powerline/bindings/fish'
powerline-daemon -q
powerline-setup

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
