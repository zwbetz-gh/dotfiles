JOTS_DIR="${HOME}/jots"
JOTS_FILE="${JOTS_DIR}/jots.txt"

bfl_jots() {
  local TODAY="$(date +'%F')"
  local DATESTAMP="DATESTAMP ${TODAY}"
  mkdir -p ${JOTS_DIR}
  touch ${JOTS_FILE}
  if ! grep "${DATESTAMP}" ${JOTS_FILE} > /dev/null ; then
    echo "${DATESTAMP} does not exist, stamping"
    echo "" >> ${JOTS_FILE}
    echo "" >> ${JOTS_FILE}
    echo ${DATESTAMP} >> ${JOTS_FILE}
  else
    echo "${DATESTAMP} exists, skipping"
  fi
  code ${JOTS_FILE}
}
