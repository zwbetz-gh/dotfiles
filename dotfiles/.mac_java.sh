bfl_version_switch_java_8() {
  export JAVA_HOME=${HOME}/bin/java/jdk8u242-b08/Contents/Home
  export PATH=${JAVA_HOME}/bin:${PATH}
  2>&1 java -version | head -n 1
}

bfl_version_switch_java_11() {
  export JAVA_HOME=${HOME}/bin/java/jdk-11.0.6+10/Contents/Home
  export PATH=${JAVA_HOME}/bin:${PATH}
  2>&1 java -version | head -n 1
}

bfl_version_switch_java_11
