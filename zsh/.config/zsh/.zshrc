source $ZDOTDIR/zshrc
export XDG_CONFIG_HOME="$HOME/.config"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -d /opt/homebrew ] && source /opt/homebrew/opt/asdf/libexec/asdf.sh

# pnpm
export PNPM_HOME="/Users/jmd/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/Users/jmd/.bun/_bun" ] && source "/Users/jmd/.bun/_bun"
