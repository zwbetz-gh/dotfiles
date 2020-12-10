################################################################################
# Refs:
#   https://unix.stackexchange.com/a/1292/354995
#   https://unix.stackexchange.com/a/48113/354995
################################################################################
# Avoid duplicates in history file
export HISTCONTROL=ignoredups:erasedups
# Allow for big history file size
export HISTSIZE=100000
export HISTFILESIZE=100000
# When shell exits, append to history file instead of overwriting it
shopt -s histappend
