ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sunrise"

plugins=(brews bower bundler cloudapp coffee docker gem git node npm rbenv redis-cli ruby vagrant zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.profile

eval "$(direnv hook zsh)"
