source ~/.aliases/git
source ~/.aliases/ruby
source ~/.aliases/python
source ~/.aliases/custom
source ~/.aliases/mongo
source ~/.aliases/mail
source ~/.aliases/system

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
LANG="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
export LANG
export LC_CTYPE
export LC_ALL
export EDITOR=/usr/bin/vim
# python local executables
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=~/.local/bin:$PATH
export PATH=/usr/share/robomongo/bin:$PATH
export PATH=/opt/idea/bin:$PATH
export PATH=~/.scripts:$PATH
export PYTHONSTARTUP=/home/pakallis/.pythonrc
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/npm/bin # Add npm to PATH for frontend development
# Toggle between english-greek in keyboard
# @see https://faq.i3wm.org/question/4595/problems-when-switching-keyboard-layout-in-gnome-i3/indsym $ms+d exec setxkbmap de
setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,el
[[ -s "/home/pakallis/.gvm/scripts/gvm" ]] && source "/home/pakallis/.gvm/scripts/gvm"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Customize to your needs...
export NVM_DIR="/home/pakallis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export WORKON_HOME=~/Envs
source ~/.autoenv/activate.sh
source /usr/local/bin/virtualenvwrapper.sh
