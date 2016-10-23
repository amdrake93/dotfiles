export PERSONAL_SCRIPTS_LOCATION=~/.scripts
export PATH=$PATH:$PERSONAL_SCRIPTS_LOCATION

source $PERSONAL_SCRIPTS_LOCATION/aws-commands.bash
source $PERSONAL_SCRIPTS_LOCATION/setjdk.sh
source $PERSONAL_SCRIPTS_LOCATION/colors.sh
source $PERSONAL_SCRIPTS_LOCATION/git-completion.bash
source $PERSONAL_SCRIPTS_LOCATION/git-convenience.bash

alias sublime="open -a 'Sublime Text 2.app'"
alias reload="source ~/.profile"