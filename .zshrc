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
alias here="explorer.exe ."
alias dev="cd $HOME/DevEnv"
alias www="cd $HOME/DevEnv/Personal/Source/Web"
alias work="cd $HOME/DevEnv/Work/Source"

# Setting display for wslg
export DISPLAY=:0

# Java + Android Tools for React Native (it doesn't work)
export ANDROID_HOME="$HOME/Android"
export JAVA_HOME="/usr/lib/jvm/java-20-openjdk"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/tools:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/tools/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# asdf
. "$HOME/.asdf/asdf.sh"

# fnm
export PATH="/home/marechal-dev/.local/share/fnm:$PATH"
eval "`fnm env`"

# Use zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
