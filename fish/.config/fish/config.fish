# Fisher package manager
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# asdf-vm
source (brew --prefix asdf)/asdf.fish

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# Starship prompt
if command -qv starship
  starship init fish | source
end

# Aliases
alias d docker
alias dc docker-compose
alias e emacs
alias ec emacsclient
alias g "git"
alias git "hub"
