# Start tmux on opening the terminal
if [ "$TMUX" = "" ]; then tmux; fi

# oh my zsh
USERNAME=""
# macOS
# ROOT="Users"
# Ubuntu/CentOS
# ROOT="home"
export ZSH=/$ROOT/$USERNAME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# History {{{
HISTSIZE=10000
SAVEHIST=9000
HISTFILE=~/.zsh_history
# }}}

plugins=(git)

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export EDITOR='vim'

alias ct="ctags -R --exclude=.git --exclude=node_modules"
alias dotfiles="ls -a | grep '^\.' | grep --invert-match '\.DS_Store\|\.$'"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# peco ssh config
alias s='ssh $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
