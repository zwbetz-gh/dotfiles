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
export NODE_HOME=${HOME}/bin/node/node-v16.13.1-darwin-arm64
export HUGO_HOME=${HOME}/bin/hugo/hugo_extended_0.91.1_macOS-ARM64

################################################################################
# PATH
################################################################################

export PATH=${JAVA_HOME}/bin:${PATH}
export PATH=${NODE_HOME}/bin:${PATH}
export PATH=${HUGO_HOME}:${PATH}

# Add `code`
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
