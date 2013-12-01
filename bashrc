# Do not send control keys to terminal. I did this for vim to work with ctrl+s
stty start undef stop undef
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias c='clear'
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias gch='google-chrome'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'
# become root #
alias root='sudo -i'
alias su='sudo -i'
## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

alias gno='gnome-open'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/sbt/bin:$PATH
alias glog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias ga='git add '
alias gb='git branch '
alias gco='git checkout '
alias gcom='git commit'
alias gd='git diff'
alias gf='git fetch '
alias gl='git log'
alias gk='gitk --all&'
alias gm='git merge '
alias gp='git push'
alias gr='git remote'
alias gs='git status '
alias gst='git stash'
alias gx='gitx --all'

#Rails aliases
alias rdbm='rake db:migrate'
alias rr='rake routes'
alias rdbr='rake db:rollback'
alias rdbms='rake db:migrate:status'
alias rdbtp='rake db:test:prepare'
alias rmaq='rake minitest:all:quick'
alias rmaf='rake minitest:features'
alias rtest='bundle exec ruby -Itest '
alias rc='rails console'
alias bi='bundle install'
alias bu='bundle update'
alias rd='rails destroy'
alias rg='rails generate'
alias rs='rails server'
# other aliases
alias grep='grep --color=always'
alias c='clear'
alias fs='foreman start'
alias last='clear;!!'
alias ..="cd .."
alias ...="cd .. .."

# cs and ls
alias la='ls -lah $LS_COLOR'
function cl(){ cd "$@" && la; }

PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\$(__git_ps1 ' %s')\[\033[01;34m\] \$\[\033[00m\] "

# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.visual '!gitk'
#Installer
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias c='clear'
alias l='ls'
alias v='vim'

alias h='heroku'
#TODO add shortcuts for curl
