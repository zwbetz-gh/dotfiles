bfl_docker_clean() {
  echo "Removing unused containers"
  docker container prune -f
  echo "Removing unused images"
  docker image prune -f
  echo "Removing unused volumes"
  docker volume prune -f
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

bfl_docker_config_services() {
  docker-compose config --services
}
