################################################################################
# Imports
################################################################################

source ${HOME}/.common_docker.sh
source ${HOME}/.common_git.sh
source ${HOME}/.common_history.sh
source ${HOME}/.common_jots.sh
source ${HOME}/.common_logging.sh
source ${HOME}/.common_prompt.sh
source ${HOME}/.common_todo.sh
source ${HOME}/.common_various.sh

################################################################################
# PATH
################################################################################

mkdir -p ${HOME}/bin
export PATH="${PATH}:${HOME}/bin"

################################################################################
# Alias
################################################################################

alias ll="ls -alFh"
alias grep="grep --color=auto"

################################################################################
# Detect OS
# Ref: https://stackoverflow.com/a/8597411/11499871
################################################################################

if [[ "${OSTYPE}" == "linux-gnu" ]]; then
  echo "OS is linux"
  source ${HOME}/.linux.sh
elif [[ "${OSTYPE}" == "darwin"* ]]; then
  echo "OS is mac"
  source ${HOME}/.mac.sh
else
  echo "OS is unknown"
fi
