JOTS=${HOME}/jots/jots.txt

bfl_jots_timestamp() {
  local timestamp="[$(date +'%F %T')]"
  echo -e "#####################\n${timestamp}"
}

bfl_jots_open() {
  code ${JOTS}
}

bfl_jots() {
  echo "" >> ${JOTS}
  bfl_jots_timestamp >> ${JOTS}
  bfl_jots_open
}
