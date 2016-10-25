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
alias redis="~/Development/redis-3.2.1/src/redis-server"

# flyway commands
alias flyway-boxbe="/Users/nstanard/Development/flyway/flyway -user=root -url=\"jdbc:mysql://127.0.0.1:3306/boxbe?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:/Users/nstanard/Development/EDS/analyst-ng/boxbe/database/main\""
alias flyway-analyst="/Users/nstanard/Development/flyway/flyway -user=root -url=\"jdbc:mysql://127.0.0.1:3306/analyst?autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8\" -locations=\"filesystem:/Users/nstanard/Development/EDS/analyst-ng/source/ext-db/analyst-ng\""

# build commands
alias build-test-all="pushd /Users/nstanard/Development/EDS/analyst-ng/; buildr clean package; popd;"
alias build-all="pushd /Users/nstanard/Development/EDS/analyst-ng/; buildr clean package test=no; popd;"
alias build-analyst="pushd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-analyst-ng/; buildr clean package test=no; popd;"
alias build-admin="pushd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-admin-ng/; buildr clean package test=no; popd;"

# change dir to project folders
alias analyst-ng="cd /Users/nstanard/Development/EDS/analyst-ng/"
alias analyst="cd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-analyst-ng/src/main/webapp"
alias admin="cd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-admin-ng/src/main/webapp"
alias boxbe="cd /Users/nstanard/Development/EDS/analyst-ng/boxbe/webapp-boxbe/src/main/web-src"

# watch for front-end changes
alias analyst-watch="cd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-analyst-ng/src/main/webapp && npm run watch"
alias admin-watch="cd /Users/nstanard/Development/EDS/analyst-ng/source/webapp-admin-ng/src/main/webapp && npm run watch"

setjdk 1.8
ulimit -n 1024
