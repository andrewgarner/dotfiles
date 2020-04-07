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
alias g "git"
alias git "hub"
