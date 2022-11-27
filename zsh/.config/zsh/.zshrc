source $ZDOTDIR/zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


source /opt/homebrew/opt/asdf/libexec/asdf.sh
source /Users/jmd/.asdf/installs/rust/1.57.0/env

# pnpm
export PNPM_HOME="/Users/jmd/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
