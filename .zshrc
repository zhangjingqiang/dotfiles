export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

plugins=(git)

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# MacVim
export PATH="$PATH:/Applications/MacVim.app/Contents/bin"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# Node.js
export PATH="$HOME/.nodenv/bin:$PATH"
if command -v nodenv 1>/dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# PHP
export PATH="$HOME/.phpenv/bin:$PATH"
if command -v phpenv 1>/dev/null 2>&1; then
  eval "$(phpenv init -)"
fi
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Kubernetes
alias kubectl="kubecolor"
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

if [[ "$(uname)" == "Darwin" ]]; then
  # macOS
  kube_ps1_path="/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
elif [[ "$(uname)" == "Linux" ]]; then
  # Linux
  kube_ps1_path="/home/linuxbrew/.linuxbrew/opt/kube-ps1/share/kube-ps1.sh"
fi

if [[ -f "$kube_ps1_path" ]]; then
  source "$kube_ps1_path"
  PS1='$(kube_ps1) '$PS1
fi

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
alias mux=tmuxinator

# peco
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
