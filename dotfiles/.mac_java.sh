bfl_java() {
  local USAGE="\
Usage: ${FUNCNAME[0]} <VERSION>
Where <VERSION> is one of: 8, 11"

  if [[ ${#} -ne 1 ]]; then
    echo -e "${USAGE}"
    return 1
  fi

  if [[ ${1} == 8 ]]; then 
    export JAVA_HOME=${HOME}/bin/java/jdk8u242-b08/Contents/Home
  elif [[ ${1} == 11 ]]; then 
    export JAVA_HOME=${HOME}/bin/java/jdk-11.0.6+10/Contents/Home
  else 
    echo -e "${USAGE}"
    return 1
  fi 

  export PATH=${JAVA_HOME}/bin:${PATH}
  2>&1 java -version | head -n 1
}

bfl_java 11
