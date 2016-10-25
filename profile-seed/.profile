export PERSONAL_SCRIPTS_LOCATION=~/.scripts
export PATH=$PATH:$PERSONAL_SCRIPTS_LOCATION

source $PERSONAL_SCRIPTS_LOCATION/aws-commands.bash
source $PERSONAL_SCRIPTS_LOCATION/setjdk.sh
source $PERSONAL_SCRIPTS_LOCATION/colors.sh
source $PERSONAL_SCRIPTS_LOCATION/git-completion.bash
source $PERSONAL_SCRIPTS_LOCATION/git-convenience.bash

# open files in Sublime Text from the command line
alias sublime="open -a 'Sublime Text.app'"

# reload profile changes without closing the terminal
alias reload="source ~/.profile"

# always list all
alias ls="ls -al"

# run redis
alias redis="~/PATH/TO/REDIS/FOLDER/redis-3.2.1/src/redis-server"

# flyway commands, assumes password is blank
alias flyway-boxbe="/PATH/TO/FLYWAY/FOLDER/flyway/flyway -user=root -url=\"jdbc:mysql://127.0.0.1:3306/boxbe?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:/PATH/TO/ANALYST/FOLDER/analyst-ng/boxbe/database/main\""
alias flyway-analyst="/PATH/TO/FLYWAY/FOLDER/flyway/flyway -user=root -url=\"jdbc:mysql://127.0.0.1:3306/analyst?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:/PATH/TO/ANALYST/FOLDER/analyst-ng/source/ext-db/analyst-ng\""

# change dir to project folders
alias analyst-ng="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/"
alias analyst="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-analyst-ng/src/main/webapp"
alias admin="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-admin-ng/src/main/webapp"
alias boxbe="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/boxbe/webapp-boxbe/src/main/web-src"

# build commands
alias build-test-all="pushd /PATH/TO/ANALYST/FOLDER/analyst-ng/; buildr clean package; popd;"
alias build-all="pushd /PATH/TO/ANALYST/FOLDER/analyst-ng/; buildr clean package test=no; popd;"
alias build-analyst="pushd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-analyst-ng/; buildr clean package test=no; popd;"
alias build-admin="pushd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-admin-ng/; buildr clean package test=no; popd;"

# watch for front-end changes
alias watch-analyst="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-analyst-ng/src/main/webapp && npm run watch"
alias watch-admin="cd /PATH/TO/ANALYST/FOLDER/analyst-ng/source/webapp-admin-ng/src/main/webapp && npm run watch"

setjdk 1.8
ulimit -n 1024