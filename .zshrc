# Path to your oh-my-zsh installation.
export ZSH=/Users/hoang.nguyen/.oh-my-zsh
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export EDITOR=vim
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export GEM_EDITOR="mvim"

ZSH_THEME="robbyrussell"
DEFAULT_USER="hoang.nguyen"

HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(alias-tips history-search-multi-word colored-man-pages extract github jsontools git-extras brew rails ruby osx web-search sudo bundler common-aliases trash command-not-found osx)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
source ~/.bin/tmuxinator.zsh

export PATH="/usr/local/sbin:$PATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source ~/.aliases
source ~/.functions
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
#
compctl -g '~/.teamocil/*(:t:r)' itermocil

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# export REST_BASE_URL=dev-hoang-nguyen.env.xing.com:3007/rest
export SANDBOX=test-hoang-nguyen.env.xing.com

export PATH="/usr/local/sbin:$PATH"

eval "$(rbenv init -)"
eval $(docker-machine env default)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fpath=(~/xing-scripts/completion/zsh $fpath)
source ~/.iterm2_shell_integration.`basename $SHELL`
export DOCKER_IP=$(docker-machine ip default)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

