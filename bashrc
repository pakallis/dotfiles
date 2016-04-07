# Do not send control keys to terminal. I did this for vim to work with ctrl+s
stty start undef stop undef

#######################################################
################ Custom aliases #######################
#######################################################

################# Git aliases #########################

  alias ga='git add '
  alias gb='git branch '
  alias gco='git checkout '
  alias gcom='git commit --verbose'
  alias fixup='git commit --fixup'
  alias gd='git diff --word-diff'
  alias gf='git fetch '
  alias gg='git grep'
  alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
  alias gl='git log'
  alias gk='gitk --all&'
  alias gm='git merge '
  alias grb='git rebase'
  alias grbi='git rebase -i --autosquash'
  alias gp='git push'
  alias gr='git remote'
  alias gs='git status '
  alias gst='git stash'

  if [ ! $(uname -s) = "Darwin" ]; then
    alias gx='gitx --all'
  fi

################# END - Git aliases ###################

################### Rails aliases #####################

  alias rdbm='bin/rake db:migrate'
  alias rr='bin/rake routes'
  alias rdbr='bin/rake db:rollback'
  alias rdbms='bin/rake db:migrate:status'
  alias rdbtp='bin/rake db:test:prepare'
  alias rdbmd='bin/rake db:migrate:down'
  alias rmaq='rdbtp && bin/rake minitest:all:quick'
  alias rtsp="rake teaspoon"
  alias testall='bin/rake test:all'
  alias rmaf='bin/rake minitest:features'
  alias rtest='bin/bundle exec ruby -Itest '
  alias rc='bin/rails c'
  alias frrc='foreman run bin/rails c'
  alias fs='foreman start'
  alias frrs='foreman run bin/rails server'
  alias b='bin/bundle'
  alias rk='bin/rake'
  alias t="ruby -I test"
  alias bi='bin/bundle install'
  alias bu='bin/bundle update'
  alias be='bin/bundle exec'
  alias rg='bin/rails generate'
  alias rs='bin/rails server'

  function runttest {
    tmux select-pane -t 2
    tmux send-keys "rdbtp" C-m
    tmux send-keys "rmaq" C-m
    tmux select-pane -t 1
  }

############# END - Rails aliases ####################

############ Directories #############################

  alias ..='cd ..'
  alias ...='cd ../../../'
  alias ....='cd ../../../../'
  alias .....='cd ../../../../'
  alias .4='cd ../../../../'
  alias .5='cd ../../../../..'

############ END - Directories #######################

######################################################
################ END - Custom aliases ################
######################################################


############## Internal git aliases ##################

  git config --global alias.co checkout
  git config --global alias.br branch
  git config --global alias.ci commit
  git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
  git config --global alias.st status
  git config --global alias.unstage 'reset HEAD --'
  git config --global alias.visual '!gitk'

############## END - Internal git aliases ############

################ APT-get aliases #####################

  alias install='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'

############## END - APT-get aliases #################

############## System info aliases ###################

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

############ END - System info aliases ###############

############ Frontend aliases ########################

  alias grub='grunt build'
  alias grus='grunt server'

############ END - Frontend aliases ##################

########### Other aliases ############################

  alias grep='grep --color=always'
  alias last='clear;!!'
  alias c='clear'
  alias gch='google-chrome'
  ## Colorize the grep command output for ease of use (good for log files)##
  alias grep='grep --color=auto'
  alias egrep='egrep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias mkdir='mkdir -pv'
  # become root #
  alias root='sudo -i'
  alias gno='gnome-open'
  # cs and ls
  alias la='ls -lah $LS_COLOR'
  alias l='less '
  function cl(){ cd "$@" && la; }
  alias v='vim'
  alias tsp="teaspoon"
  alias h='heroku'
  alias rbcp='rubocop -R'
  alias cflnt='coffeelint'
  function fname {
    find . -iname "*$@*"
  }
  #TODO add shortcuts for curl
  alias tmux="tmux -2"

  # Mac OS specific copy-paste
  if [ ! $(uname -s) = "Darwin" ]; then
      alias pbcopy='xsel --clipboard --input'
      alias pbpaste='xsel --clipboard --output'
  fi
  # Docker
  alias dl='docker ps -l -q'
  # Kepyes specific
  alias dumpallinone='mysqldump -h 197.1.2.57 -u diaxeirisi -p emathisi_psm > allinone_emathisi_psm.dump'

########### END - Other aliases ######################

#####################################################
################### gpg functions ###################
#####################################################

  encrypt ()
  {
  # Use ascii armor
  gpg -ac --no-options "$1"
  }

  bencrypt ()
  {
  # No ascii armor
  # Encrypt binary data. jpegs/gifs/vobs/etc.
  gpg -c --no-options "$1"
  }

  decrypt ()
  {
  gpg --no-options "$1"
  }

  pe ()
  {
  # Passphrase encryption program
  # Created by Dave Crouse 01-13-2006
  # Reads input from text editor and encrypts to screen.
  clear
  echo "         Passphrase Encryption Program";
  echo "--------------------------------------------------"; echo "";
  which $EDITOR &>/dev/null
   if [ $? != "0" ];
       then
       echo "It appears that you do not have a text editor set in your
  .bashrc file.";
       echo "What editor would you like to use ? " ;
       read EDITOR ; echo "";
   fi
  echo "Enter the name/comment for this message :"
  read comment
  $EDITOR passphraseencryption
  gpg --armor --comment "$comment" --no-options --output
  passphraseencryption.gpg --symmetric passphraseencryption
  shred -u passphraseencryption ; clear
  echo "Outputting passphrase encrypted message"; echo "" ; echo "" ;
  cat passphraseencryption.gpg ; echo "" ; echo "" ;
  shred -u passphraseencryption.gpg ;
  read -p "Hit enter to exit" temp; clear
  }
  # usage: gpg-edit FILE
  gpg-edit() {
    local ENCRYPTED="$1"

    exec 3<<<""
    gpg --decrypt <"$ENCRYPTED" >/dev/fd/3
    vim /dev/fd/3
    gpg -c <&3 >"$ENCRYPTED"
    exec 3>&-
  }
  alias largest='du -hsx * | sort -rh | head -10'
  alias mc='mycli -u root -p root'

  setxkbmap -option grp:alt_shift_toggle us,el

#####################################################
################### END - gpg functions #############
#####################################################

#####################################################
#################### Chruby #########################
#####################################################

  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh

#####################################################
################### END - Chruby ####################
#####################################################


#####################################################
####################### ENV variables ###############
#####################################################

  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
  PATH=$PATH:$HOME/npm/bin # Add npm to PATH for frontend development
  PATH=$PATH:$HOME/.composer/vendor/bin

  export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
  export PYTHONSTARTUP=/home/pakallis/.pythonrc
  export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/pakallis/npm/lib/node_modules
  LANG="en_US.UTF-8"
  LC_CTYPE="en_US.UTF-8"
  LC_ALL="en_US.UTF-8"
  export LANG
  export LC_CTYPE
  export LC_ALL

  # Added by the Heroku Toolbelt
  export PATH="/usr/local/heroku/bin:$PATH"

  export PATH=/usr/local/sbt/bin:$PATH
  export EDITOR=/usr/bin/vim

#####################################################
####################### END - ENV variables #########
#####################################################

###################### FZF ##########################
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#####################################################
