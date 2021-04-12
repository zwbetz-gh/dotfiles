bfl_todo_upgrade() {
  pushd /tmp
  curl -L -O https://raw.githubusercontent.com/zwbetz-gh/todo-cli/master/todo
  chmod 755 todo
  mv todo ${HOME}/bin
  popd
  command -v todo
}
