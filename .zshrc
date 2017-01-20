# Start tmux on opening the terminal
if [ "$TMUX" = ""  ]; then tmux; fi

# oh my zsh
USERNAME=""
export ZSH=/Users/$USERNAME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
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

eval "$(rbenv init -)"
eval "$(pyenv init -)"

# tmuxinator
source ~/.bin/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# peco | use ec2ssh to generate ~/.ssh/config list first
ssh-peco() {
 hostname=$(cat ~/.ssh/config | grep '^Host ' | grep -v -e 'bitbucket' -e 'github' | sed -e 's/Host //g' | sort -n | peco)
 [[ -n "$hostname" ]] && ssh "$hostname"
}
