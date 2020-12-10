JOTS=${HOME}/jots/jots.txt

jots_timestamp() {
  local timestamp="[$(date +'%F %T')]"
  echo -e "#####################\n${timestamp}"
}

jots_open() {
  code ${JOTS}
}

jots() {
  echo "" >> ${JOTS}
  jots_timestamp >> ${JOTS}
  jots_open
}
