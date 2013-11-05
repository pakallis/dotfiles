
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
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias gno='gnome-open'

# ARDUINO_DIR   = /usr/share/arduino
# ARDMK_DIR     = /usr
# AVR_TOOLS_DIR = /usr
PATH=$PATH:/usr/share/arduino
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias gits='git status'
alias gitd='git diff'
export PATH=/usr/local/sbt/bin:$PATH
alias glog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gcom='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias ..="cd .."
alias ...="cd .. .."

# cs and ls
alias la='ls -lah $LS_COLOR'
function cl(){ cd "$@" && la; }
# Show working branch in git
# if [ -f /etc/bash_completion ]; then
    # . /etc/bash_completion
# fi
# if [ -f /etc/bash_completion.d/git-completion.bash ]; then
    # . /etc/bash_completion.d/git-completion.bash;
# fi
# export GIT_PS1_SHOWDIRTYSTATE=1
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]\$(__git_ps1 ' %s')\[\033[01;34m\] \$\[\033[00m\] "
# export PS1="\[\033[G\]$PS1"


#Installer
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias c='clear'
alias l='ls'
alias v='vim'
alias gr='git remote'
#TODO add shortcuts for curl
