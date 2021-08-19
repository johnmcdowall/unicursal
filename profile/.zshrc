# Environment variables set everywhere
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="brave"

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/.zshrc

export HISTFILE=$HOME/.zhistory

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
