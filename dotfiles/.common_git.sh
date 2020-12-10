git_clean() {
  echo "Pruning local refs"
  git prune
  echo "Pruning remote refs"
  git remote prune origin
}

git_branch_delete_local() {
  echo "
To delete a branch, hit y + Enter
To keep a branch, just hit Enter
To exit early, hit Control-C
"

  # Get all branches except current
  branches="$(git branch | tr -d ' ' | grep -v '^*')"

  # Loop through branches, asking if you wanna delete
  for b in $branches; do 
    read -p "Delete $b? " answer
    case $answer in 
      y|yes) git branch -D $b ;;
      *) echo "Keeping $b." ;;
    esac
    echo ""
  done 

  # List remaining branches
  git branch
}
