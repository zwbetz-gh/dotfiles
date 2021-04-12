bfl_path() {
  echo ${PATH} | tr ':' '\n' | sort
}

bfl_lowercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:upper:]' '[:lower:]'
}

bfl_uppercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:lower:]' '[:upper:]'
}

bfl_length() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "${#input}"
}

bfl_count_bytes() {
  wc -c < "$1" | tr -d ' '
}

bfl_count_chars() {
  wc -m < "$1" | tr -d ' '
}

bfl_count_words() {
  wc -w < "$1" | tr -d ' '
}

bfl_count_lines() {
  wc -l < "$1" | tr -d ' '
}

bfl_math() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  python -c "print("$input")"
}

bfl_search_file_by_name() {
  find . -type f -name "*$@*"
}

bfl_search_file_by_name_ignore_case() {
  find . -type f -iname "*$@*"
}

bfl_search_text_by_regex() {
  grep -r "$@" *
}

bfl_search_text_by_regex_ignore_case() {
  grep -i -r "$@" *
}
