export TERM="xterm-256color"

export LANG=en_US.UTF-8
export EDITOR='vim'

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"

# python
export PATH="$HOME/.pyenv/bin:$PATH"

# php
export PATH="$HOME/.composer/vendor/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
alias mux=tmuxinator

# peco ssh config
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
