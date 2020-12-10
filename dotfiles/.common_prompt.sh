################################################################################
# Ref: https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html
################################################################################
current_git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n ${branch} ]]; then
    echo "${branch}"
  fi
}

export PS1='\u \h \[\033[0;32m\]\w\[\033[0m\] \[\033[0;33m\]$(current_git_branch)\[\033[0m\]\n\$ '
