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

# Paths
export REDIS_PATH="~/"
export FLYWAY_PATH="/Users/"
export ANALYST_PATH="/Users/"

# MySQL User
export MYSQL_USER="root"

# MySQL Password
export MYSQL_PASS=""

# run redis
alias redis="$REDIS_PATH/src/redis-server"

# flyway commands
alias flyway-boxbe="$FLYWAY_PATH/flyway -user=$MYSQL_USER -password=$MYSQL_PASS -url=\"jdbc:mysql://127.0.0.1:3306/boxbe?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:$ANALYST_PATH/boxbe/database/main\""
alias flyway-analyst="$FLYWAY_PATH/flyway -user=$MYSQL_USER -password=$MYSQL_PASS -url=\"jdbc:mysql://127.0.0.1:3306/analyst?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:$ANALYST_PATH/source/ext-db/analyst-ng\""
alias flyway-analyst-dev="$FLYWAY_PATH/flyway -user=$MYSQL_USER -password=$MYSQL_PASS -url=\"jdbc:mysql://127.0.0.1:3306/analystFlywayDev?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:$ANALYST_PATH/source/ext-db/analyst-ng-dev-load\""
alias flyway-analyst-all="flyway-analyst clean && flyway-analyst migrate && flyway-analyst-dev clean && flyway-analyst-dev migrate"

# change dir to project folders
alias analyst-ng="cd $ANALYST_PATH/"
alias analyst="cd $ANALYST_PATH/source/webapp-analyst-ng/src/main/webapp"
alias admin="cd $ANALYST_PATH/source/webapp-admin-ng/src/main/webapp"
alias boxbe="cd $ANALYST_PATH/boxbe/webapp-boxbe/src/main/web-src"

# build commands
alias build-test-all="pushd $ANALYST_PATH/; buildr clean package; popd;"
alias build-all="pushd $ANALYST_PATH/; buildr clean package test=no; popd;"
alias build-analyst="pushd $ANALYST_PATH/source/webapp-analyst-ng/; buildr clean package test=no; popd;"
alias build-admin="pushd $ANALYST_PATH/source/webapp-admin-ng/; buildr clean package test=no; popd;"

# watch for front-end changes
alias watch-analyst="cd $ANALYST_PATH/source/webapp-analyst-ng/src/main/webapp && npm run watch"
alias watch-admin="cd $ANALYST_PATH/source/webapp-admin-ng/src/main/webapp && npm run watch"

setjdk 1.8
ulimit -n 1024
