# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Disable special chars for use in vim
stty start undef stop undef

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmux git osx ruby)

source $ZSH/oh-my-zsh.sh
source $HOME/.bashrc

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=vim
# if [[ uname != 'Linux' ]]; then
#   alias vim="/usr/local/Cellar/macvim/7.4-71/MacVim.app/Contents/MacOS/Vim"
# fi

# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.visual '!gitk'

alias g='git'
alias ga='git add '
alias gs='git status'
alias gco='git checkout '
alias gb='git branch '
alias gcom='git commit '
alias gcam='git commit -am '
alias gl='git log '
alias gst='git stash'

alias gp='git push '
alias gf='git fetch '
alias gm='git merge '

alias gd='git diff '
alias gdc='git diff --cached'

#Rails aliases
alias rdbm='rake db:migrate'
alias rr='rake routes'
alias rdbr='rake db:rollback'
alias rdbms='rake db:migrate:status'
alias rdbtp='rake db:test:prepare'
alias rmaq='rake minitest:all:quick'
alias rmaf='rake minitest:features'
alias rtest='bundle exec ruby -ITest '
alias rc='rails console'
# other aliases
alias grep='grep --color=always'
alias c='clear'
alias fs='foreman start'
alias last='clear;!!'
bindkey -v
