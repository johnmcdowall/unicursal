# Environment variables set everywhere
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="brave"

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/.zshrc

export HISTFILE=$HOME/.zhistory


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jmd/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jmd/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jmd/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jmd/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source ~/.zshrc.local 
