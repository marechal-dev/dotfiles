# Important Paths
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/home/marechal-dev/.local/bin:$PATH"
export PATH="/home/marechal-dev/.local/bin/lvim:$PATH"

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# The GOAT theme
ZSH_THEME="half-life"

# Just remind me to update when it's time
zstyle ':omz:update' mode reminder

# The only accecptable format
HIST_STAMPS="dd.mm.yyyy"

# Plugins
plugins=(git)

# Start!
source $ZSH/oh-my-zsh.sh

# Setup JAVA_HOME with asdf
. ~/.asdf/plugins/java/set-java-home.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Remove weird percent symbol at eol
export PROMPT_EOL_MARK=''

# Personal Aliases
alias zshconfig="nvim $HOME/.zshrc"
alias winhere="explorer.exe ."
alias dev="cd $HOME/Dev"
alias src="cd $HOME/Dev/Source"
alias me="cd $HOME/Dev/Source/Projects/Personal"
alias job="cd $HOME/Dev/Source/Projects/Professional"
alias learn="cd $HOME/Dev/Source/Learning"
alias luchml="$HOME/ssh/luchml.sh"
alias lucprd="$HOME/ssh/lucprd.sh"
alias bls="eza --color=always --icons=always --long --git --all --no-user"
alias wttrpoa="curl wttr.in/Porto+Alegre,Brazil"
alias wttrrg="curl wttr.in/Rio+Grande,Brazil"

# Setting display for wslg
export DISPLAY=:0

# asdf
. "$HOME/.asdf/asdf.sh"

# Use zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/home/marechal-dev/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/marechal-dev/google-cloud-sdk/path.zsh.inc' ]; then . '/home/marechal-dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/marechal-dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/marechal-dev/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# broot config
source /home/marechal-dev/.config/broot/launcher/bash/br
