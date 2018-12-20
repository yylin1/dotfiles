# Path to your oh-my-zsh installation.
export ZSH=/Users/kyle/.oh-my-zsh
source "/Users/kyle/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# ZSH Theme
ZSH_THEME="spaceship"
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_BATTERY_ALWAYS_SHOW=false
export SPACESHIP_VI_MODE_SHOW=false

plugins=(git encode64 urltools osx autojump kubectl completion zsh zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh/completions $fpath)

alias git='hub'
alias vim='mvim -v'

# Kubernetes
export KUBE_EDITOR="mvim -v"
alias k='kubectl'
alias kks='kubectl -n kube-system'
alias kns='kubens'
alias kctx='kubectx'
alias kd='kubectl delete'
alias ka='kubectl apply'
alias kr='kubectl run'
alias ke='kubectl edit'

# git editor
export VISUAL='mvim -v'
export EDITOR="$VISUAL"

# key mapping
bindkey "[C" forward-word
bindkey "[D" backward-word

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kyle/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kyle/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kyle/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kyle/google-cloud-sdk/completion.zsh.inc'; fi

# added by travis gem
[ -f /Users/kyle/.travis/travis.sh ] && source /Users/kyle/.travis/travis.sh
