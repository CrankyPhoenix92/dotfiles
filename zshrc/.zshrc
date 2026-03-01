eval "$(starship init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set alias for "interactive neovim"
alias inv='nvim $(fzf -m --preview="bat --color=always --line-range=:25 {}")'
