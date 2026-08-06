{{ if eq .chezmoi.os "linux" -}}
# Disable greeting
set -U fish_greeting

# Aliases for modern coreutils
alias ls="eza"
alias cat="bat"
fish_add_path ~/.local/bin

# Mise (Language Manager)
mise activate fish | source

# Starship
starship init fish | source

# FZF Hotkeys
fzf --fish | source

# Atuin (History)
atuin init fish --disable-up-arrow | source

# Carapace (Autocomplete)
set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense'
carapace _carapace fish | source

# Zoxide (cd replacement)
zoxide init --cmd cd fish | source
{{ end -}}
