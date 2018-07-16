#
# ~/.bashrc
#
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -l'
alias of='nohup firefox &'


PS1='\[$(tput setaf 87)\u$(tput setaf 161)@$(tput setaf 15)\h \W]$ $(tput setaf 49)$git_branch$(tput setaf 15):\] '
#export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/alex/.sdkman"
[[ -s "/home/alex/.sdkman/bin/sdkman-init.sh" ]] && source "/home/alex/.sdkman/bin/sdkman-init.sh"
