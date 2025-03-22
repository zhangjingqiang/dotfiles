export TERM="xterm-256color"

export LANG=en_US.UTF-8
export EDITOR='vim'

plugins=(git)

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# python
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# php
export PATH="$HOME/.phpenv/bin:$PATH"
if command -v phpenv 1>/dev/null 2>&1; then
  eval "$(phpenv init -)"
fi
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
alias mux=tmuxinator

# peco
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'

# kubernetes
alias kubectl="kubecolor"
alias k="kubecolor"
alias kc="kubectx"
alias kn="kubens"

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1) '$PS1

kubectx() {
  command kubectx "$@"
  export KUBE_PS1_CONTEXT=$(kubectl config current-context)
}

kubens() {
  command kubens "$@"
  export KUBE_PS1_NAMESPACE=$(kubectl config view --minify --output 'jsonpath={..namespace}')
}
