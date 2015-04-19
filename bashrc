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
alias rdbm='zeus rake db:migrate'
alias rr='zeus rake routes'
alias rdbr='zeus rake db:rollback'
alias rdbms='zeus rake db:migrate:status'
alias rdbtp='zeus rake db:test:prepare'
alias rdbmd='zeus rake db:migrate:down'
alias rmaq='rdbtp && zeus rake minitest:all:quick'
alias rmaf='rake minitest:features'
alias rtest='bundle exec ruby -Itest '
alias rc='zeus c || foreman run rails c || rails c'
alias frrc='foreman run rails c'
alias b='bundle'
alias rk='rake'
alias t="ruby -I test"
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'
alias rd='rails destroy'
alias rg='rails generate'
alias rs='rails server'
# other aliases
alias grep='grep --color=always'
alias c='clear'
alias fs='foreman start'
alias frrs='foreman run rails server'
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

function starttmux {
  tmux start-server
  tmux new-session -d -s rails -n vim
  tmux split-window -t rails:1 -h
  tmux send-keys -t rails:1 "rails console" C-m
  tmux new-window -t rails:2 -n server
  tmux send-keys -t rails:2 "foreman run rails server" C-m
  tmux split-window -t rails -h
  tmux send-keys -t rails:2 "tail -f log/development.log" C-m
  tmux new-window -t rails:3 -n zeus
  tmux send-keys -t rails:3 "zeus start" C-m
  tmux select-window -t rails:1
  tmux -2 attach-session -t rails
  sleep 1
  tmux select-pane -t 1
  tmux resize-pane -t 1 -R 20
}

function runttest {
  tmux select-pane -t 2
  tmux send-keys "rdbtp" C-m
  tmux send-keys "rmaq" C-m
  tmux select-pane -t 1
}
#TODO add shortcuts for curl
alias tmux="tmux -2"
export PYTHONSTARTUP=/home/pakallis/.pythonrc
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/pakallis/npm/lib/node_modules


# Node dev

alias grub='grunt build'
alias grus='grunt server'

if [ ! $(uname -s) = "Darwin" ]; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi
