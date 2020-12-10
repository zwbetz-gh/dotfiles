get_local_ip() {
  ifconfig | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' 
}

mac_os_versions() {
  sw_vers
}

find_processes_using_port() {
  local port="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$port" ]] && return 1
  echo "Enter network account password if prompted"
  sudo lsof -i :$port
}

kill_chromedriver() {
  local pid=$(find_processes_using_port 9515 | awk '{print $2}' | tail -n 1)
  2>/dev/null kill ${pid}
}

caffe() {
  if [[ ${#} -lt 1 ]]; then
    echo -e "Usage:\n  ${FUNCNAME[0]} HOURS"
    echo -e "Sample:\n  ${FUNCNAME[0]} 1"    
    return 1
  fi
  local hr=${1}
  local sec=$(python -c "print(${hr} * 60 * 60)")
  local day=$(python -c "print(round(${hr} / 24))")
  echo "${hr} hr == ${sec} sec == ${day} day"
  echo "Creating an assertion to prevent the display, system, and disk from sleeping"
  caffeinate -d -i -m -s -u -t ${sec}
}

cpu_cores() {
  sysctl hw.physicalcpu hw.logicalcpu
}
