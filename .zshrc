export TERM="xterm-256color"

# oh my zsh
export ZSH=/Users/hero/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"

# History {{{
HISTSIZE=10000
SAVEHIST=9000
HISTFILE=~/.zsh_history
# }}}

plugins=(git)

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export EDITOR='vim'

alias ctags="`brew --prefix`/bin/ctags" # If on macOS
alias ct="ctags -R --exclude=.git --exclude=node_modules"
alias dotfiles="ls -a | grep '^\.' | grep --invert-match '\.DS_Store\|\.$'"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# php
export PATH="$HOME/.composer/vendor/bin:$PATH"

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
alias mux=tmuxinator

# peco ssh config
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
