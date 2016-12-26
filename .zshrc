# oh my zsh
USERNAME=""
export ZSH=/Users/$USERNAME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

plugins=(git)

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export EDITOR='vim'

eval "$(rbenv init -)"
eval "$(pyenv init -)"

# macvim 7.4
alias vi='/usr/local/Cellar/macvim/7.4-107/MacVim.app/Contents/MacOS/Vim'
alias vim='/usr/local/Cellar/macvim/7.4-107/MacVim.app/Contents/MacOS/Vim'
alias gvi='/usr/local/Cellar/macvim/7.4-107/MacVim.app/Contents/MacOS/Vim'

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
