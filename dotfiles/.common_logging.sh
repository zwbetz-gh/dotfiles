log_message() {
  local level=${1}
  shift
  local message="${@}"
  echo "[${0}] [${level}] [$(date +'%F %T')] ${message}"
}

log_info() {
  log_message "INFO" "${@}"
}

log_warning() {
  log_message "WARNING" "${@}"
}

log_error() {
  >&2 log_message "ERROR" "${@}"
}
