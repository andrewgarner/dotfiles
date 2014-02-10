ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"

plugins=(brews bundler cake cloudapp gem git github node npm osx pow rbenv redis-cli ruby thor vagrant zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.profile

eval "$(direnv hook zsh)"
