export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

plugins=(git)

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"

# Go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# PHP
export PATH="$HOME/.phpenv/bin:$PATH"
if command -v phpenv 1>/dev/null 2>&1; then
  eval "$(phpenv init -)"
fi
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# Kubernetes
alias kubectl="kubecolor"
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1) '$PS1

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
alias mux=tmuxinator

# peco
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
