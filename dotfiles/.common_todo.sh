todo_upgrade() {
  pushd /tmp
  curl -L -O https://raw.githubusercontent.com/zwbetz-gh/todo-cli/master/todo
  chmod +x todo
  mv todo ${HOME}/bin
  popd
  command -v todo
}
