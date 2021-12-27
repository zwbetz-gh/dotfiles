bfl_log_message() {
  local LEVEL=${1}
  shift
  local MESSAGE="${@}"
  local TIMESTAMP=$(date +'%F %T')
  echo -e "[${TIMESTAMP}] [${LEVEL}] ${MESSAGE}"
}

bfl_log_info() {
  bfl_log_message "INFO" "${@}"
}

bfl_log_warning() {
  bfl_log_message "WARNING" "${@}"
}

bfl_log_error() {
  bfl_log_message "ERROR" "${@}"
}

# bfl_log_info info
# bfl_log_warning warning
# bfl_log_error error
