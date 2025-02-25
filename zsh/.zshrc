# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh auto update
zstyle ':omz:update' mode auto

# oh-my-zsh configuration
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(git)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load starship
eval "$(starship init zsh)"

# load zoxide
eval "$(zoxide init zsh)"

# Set default terminal
export TERM="xterm-256color"

# Custom shell scripts
export PATH=$PATH:./scripts

# Set default editor
export EDITOR="nvim"
export VISUAL="nvim"

# Custom git commit
alias git-commit="./scripts/commit.sh"

. "$HOME/.local/bin/env"

# Keybinding to kill tmux session
bindkey -s '^t' 'tmux kill-session \n'
bindkey -s '^y' 'tmux kill-server \n'

# Custom CLI menu
alias menu="./scripts/menu_launcher.sh"

# Init terminal with menu
menu
