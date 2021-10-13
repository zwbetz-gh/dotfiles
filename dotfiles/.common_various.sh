bfl_common_get_path() {
  echo ${PATH} | tr ':' '\n' | sort
}

bfl_common_to_lowercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:upper:]' '[:lower:]'
}

bfl_common_to_uppercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:lower:]' '[:upper:]'
}

bfl_common_get_length() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "${#input}"
}

bfl_common_count_bytes() {
  wc -c < "$1" | tr -d ' '
}

bfl_common_count_chars() {
  wc -m < "$1" | tr -d ' '
}

bfl_common_count_words() {
  wc -w < "$1" | tr -d ' '
}

bfl_common_count_lines() {
  wc -l < "$1" | tr -d ' '
}

bfl_common_do_math() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  python -c "print("$input")"
}

bfl_common_search_file_by_name() {
  find . -type f -name "*$@*"
}

bfl_common_search_file_by_name_ignore_case() {
  find . -type f -iname "*$@*"
}

bfl_common_search_text_by_regex() {
  grep -r "$@" *
}

bfl_common_search_text_by_regex_ignore_case() {
  grep -i -r "$@" *
}
