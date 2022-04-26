# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

# asdf-vm
. $(brew --prefix asdf)/asdf.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Starship prompt
if command -v starship > /dev/null; then
  eval "$(starship init zsh)"
fi

# Aliases
alias d="docker"
alias dc="docker-compose"
alias g="git"
alias git="hub"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
