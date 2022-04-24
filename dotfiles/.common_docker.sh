bfl_docker_clean() {
  echo "Removing unused containers"
  docker container prune -f
  echo "Removing unused images"
  docker image prune -f
  echo "Removing unused volumes"
  docker volume prune -f
  echo "Removing unused data"
  docker system prune -f
}

bfl_docker_usage() {
  docker system df
}

bfl_docker_container_stop_all() {
  docker container stop $(docker container ls -aq)
}

bfl_docker_container_remove_all() {
  docker container rm $(docker container ls -aq)
}

bfl_docker_compose_build_sequential() {
  docker compose config --services | xargs -I {} docker compose build {}
}

bfl_docker_memory_usage() {
  local mem_amount_total_with_unit=$(docker system info \
  | grep 'Total Memory: ' \
  | tr -d 'Total Memory: ')

  local unit=$(echo ${mem_amount_total_with_unit} \
  | sed 's/[0-9\.]*//g')

  local mem_amount_total=$(echo ${mem_amount_total_with_unit} \
  | sed 's/[^0-9\.]*//g')

  local mem_percent_used=$(docker stats --no-stream --format '{{.MemPerc}}' \
  | tr -d '%' \
  | paste -s -d '+' - \
  | bc)

  mem_percent_used=${mem_percent_used:-0}

  local mem_amount_used=$(echo "scale=2; ${mem_amount_total} * ${mem_percent_used} / 100" \
  | bc)

  echo "Memory Amount Total: ${mem_amount_total}${unit}"
  echo "Memory Amount Used: ${mem_amount_used}${unit}"
  echo "Memory Percent Used: ${mem_percent_used}%"
}
