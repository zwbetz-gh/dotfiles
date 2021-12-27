#/usr/bin/env bash

# Make old dotfiles dir
dotfiles_old=${HOME}/dotfiles_old
mkdir -p ${dotfiles_old}

# Get git dotfiles
dotfiles="$(find $(pwd)/dotfiles -type f -name ".*")"

for f in ${dotfiles} ; do
  dotfile=${HOME}/$(basename ${f})

  # Backup old dotfile
  mv -f ${dotfile} ${dotfiles_old}

  # Symlink new dotfile
  ln -s -v ${f} ${HOME}
done

echo "Setup complete. Restart your Terminal"
