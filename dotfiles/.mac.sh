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
export GROOVY_HOME=${HOME}/bin/groovy/groovy-3.0.9
export NODE_HOME=${HOME}/bin/node/node-v16.13.1-darwin-arm64

################################################################################
# PATH
################################################################################

export PATH=${HOME}/dev/scripts:${PATH}
export PATH=${JAVA_HOME}/bin:${PATH}
export PATH=${GROOVY_HOME}/bin:${PATH}
export PATH=${NODE_HOME}/bin:${PATH}
export PATH=${HOME}/bin/hugo/hugo_0.101.0_macOS-ARM64:${PATH}
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:${PATH}"
export PATH=${HOME}/bin/pgsql/bin:${PATH}

################################################################################
# Python
################################################################################
export PYTHON_HOME=/Library/Frameworks/Python.framework/Versions/3.9
export PATH="${PYTHON_HOME}/bin:${PATH}"

if [[ ! -a ${PYTHON_HOME}/bin/python ]] ; then
  ln -s -v ${PYTHON_HOME}/bin/python3 ${PYTHON_HOME}/bin/python
fi

################################################################################
# Custom Env
################################################################################
custom_env=${HOME}/custom/.env

if [[ -f ${custom_env} ]] ; then
  set -o allexport
  source ${custom_env}
  set +o allexport
fi

################################################################################
# Various
################################################################################

# See https://support.apple.com/en-us/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

export BASH_GIT_COMPLETION_FILEPATH=/Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

if [[ -f ${BASH_GIT_COMPLETION_FILEPATH} ]] ; then
  source ${BASH_GIT_COMPLETION_FILEPATH}
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
