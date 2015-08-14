# Do not send control keys to terminal. I did this for vim to work with ctrl+s
export EDITOR=/usr/bin/vim
stty start undef stop undef
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/npm/bin # Add npm to PATH for frontend development
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
alias pscpu='ps auxf | sort -nr -k 3' alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

alias gno='gnome-open'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/sbt/bin:$PATH
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias ga='git add '
alias gb='git branch '
alias gco='git checkout '
alias gcom='git commit --verbose'
alias fixup='git commit --fixup'
alias gd='git diff --word-diff'
alias gf='git fetch '
alias gl='git log'
alias gk='gitk --all&'
alias gm='git merge '
alias grb='git rebase'
alias grbi='git rebase -i --autosquash upstream/master'
alias gp='git push'
alias deploystaging="git push -f staging $(git rev-parse --abbrev-ref HEAD):master"
alias gr='git remote'
alias gs='git status '
alias gst='git stash'
alias gx='gitx --all'
alias pushup=push_to_upstream
alias deployproduction='git push production upstream/master:master'
alias deploymigrations='git push migrations upstream/master:master'
#Rails aliases
alias rdbm='bin/rake db:migrate'
alias rr='bin/rake routes'
alias rdbr='bin/rake db:rollback'
alias rdbms='bin/rake db:migrate:status'
alias rdbtp='bin/rake db:test:prepare'
alias rdbmd='bin/rake db:migrate:down'
# rdbms | ack "journeys" | awk 'END { print $2 }'
alias rmaq='rdbtp && bin/rake minitest:all:quick'
alias testall='bin/rake test:all'
alias rmaf='bin/rake minitest:features'
alias rtest='bin/bundle exec ruby -Itest '
alias rc='bin/rails c'
alias frrc='foreman run bin/rails c'
alias b='bin/bundle'
alias rk='bin/rake'
alias t="ruby -I test"
alias bi='bin/bundle install'
alias bu='bin/bundle update'
alias be='bin/bundle exec'
alias rg='bin/rails generate'
alias rs='bin/rails server'
# other aliases
alias grep='grep --color=always'
alias c='clear'
alias fs='foreman start'
alias frrs='foreman run bin/rails server'
alias last='clear;!!'
alias ..="cd .."
alias ...="cd .. .."

# cs and ls
alias la='ls -lah $LS_COLOR'
function cl(){ cd "$@" && la; }

# PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\$(__git_ps1 ' %s')\[\033[01;34m\] \$\[\033[00m\] "

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
alias testme="git push origin -f HEAD:semaphore/pavlos"
alias rtsp="rake teaspoon"
alias tsp="teaspoon"

alias h='heroku'
alias rbcp='rubocop -R'
alias cflnt='coffeelint'
LANG="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
export LANG
export LC_CTYPE
export LC_ALL

function push_to_upstream {
branch=$(git rev-parse --abbrev-ref HEAD)
  if [ $branch = "master" ]; then
    echo 'Do not push to master'
  else
    echo "Pushing to upstream/$branch..."
    git push -f upstream $branch
  fi
}
function fname {
  find . -iname "*$@*"
}

function runttest {
  tmux select-pane -t 2
  tmux send-keys "rdbtp" C-m
  tmux send-keys "rmaq" C-m
  tmux select-pane -t 1
}

function deployproduction {
  git push production upstream/master:master
  heroku restart --remote production
}
#TODO add shortcuts for curl
alias tmux="tmux -2"
export PYTHONSTARTUP=/home/pakallis/.pythonrc
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/pakallis/npm/lib/node_modules


# Node dev

alias grub='grunt build'
alias grus='grunt server'
alias gg='git grep'

if [ ! $(uname -s) = "Darwin" ]; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

# Docker

alias dl='docker ps -l -q'

# Imgur API
export IMGUR_CLIENT_KEY="85985e0d8fc291d"
chmod +x ~/.bash_scripts/*

# Upload image on Imgur
function uploadImage {
  curl -s -F "image=@$1" https://api.imgur.com/3/upload.xml -H "Authorization: Client-ID $IMGUR_CLIENT_KEY" | grep -E -o "<link>(.)*</link>" | grep -E -o "http://i.imgur.com/[^<]*"
}
export -f uploadImage
