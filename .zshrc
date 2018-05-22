# Path to your oh-my-zsh installation.
export ZSH=/Users/kyle/.oh-my-zsh
source "/Users/kyle/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# ZSH Theme
ZSH_THEME="spaceship"
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_BATTERY_ALWAYS_SHOW=false
export SPACESHIP_VI_MODE_SHOW=false

plugins=(git encode64 urltools osx autojump kubectl completion zsh)
source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh/completions $fpath)

# Alias
alias git='hub'
alias vim='mvim -v'
alias kc='kubectl'
alias kcs='kubectl -n kube-system'

# Compilation flags
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Golang
export GOPATH=$HOME/Desktop/Devel/Go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
