################################################################################
# Imports
################################################################################
source ${HOME}/.mac_chrome.sh
source ${HOME}/.mac_homebrew.sh
source ${HOME}/.mac_various.sh

################################################################################
# Env
################################################################################
export JAVA_HOME=${HOME}/bin/java/jdk-11.0.13+8/Contents/Home
# export LD_LIBRARY_PATH=${HOME}/bin/oracle/instantclient_19_3:${LD_LIBRARY_PATH}
# export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/latest
# export DOTNET_HOME=${HOME}/bin/dotnet-sdk-3.1.101-osx-x64
# export DOTNET_ROOT=$DOTNET_HOME
# export DOTNET_TOOLS_HOME=${HOME}/.dotnet/tools
# export FLYWAY_HOME=${HOME}/bin/flyway-6.4.4
# export LOGSTASH_HOME=${HOME}/bin/logstash-7.12.0

################################################################################
# PATH
################################################################################
export PATH=${JAVA_HOME}/bin:${PATH}
# export PATH=${LD_LIBRARY_PATH}:${PATH}
# export PATH=${POSTGRES_HOME}/bin:${PATH}
# export PATH=${DOTNET_HOME}:${PATH}
# export PATH=${DOTNET_TOOLS_HOME}:${PATH}
# export PATH=${FLYWAY_HOME}:${PATH}
# export PATH=${LOGSTASH_HOME}/bin:${PATH}
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
