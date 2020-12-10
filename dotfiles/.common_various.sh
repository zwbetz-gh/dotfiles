path() {
  echo ${PATH} | tr ':' '\n' | sort
}

lowercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:upper:]' '[:lower:]'
}

uppercase() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "$input" | tr '[:lower:]' '[:upper:]'
}

length() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  echo "${#input}"
}

count_bytes() {
  wc -c < "$1" | tr -d ' '
}

count_chars() {
  wc -m < "$1" | tr -d ' '
}

count_words() {
  wc -w < "$1" | tr -d ' '
}

count_lines() {
  wc -l < "$1" | tr -d ' '
}

math() {
  local input="$([[ -p /dev/stdin ]] && cat - || echo "$@")"
  [[ -z "$input" ]] && return 1
  python -c "print("$input")"
}

search_file_by_name() {
  find . -type f -name "*$@*"
}

search_file_by_name_ignore_case() {
  find . -type f -iname "*$@*"
}

search_text_by_regex() {
  grep -r "$@" *
}

search_text_by_regex_ignore_case() {
  grep -i -r "$@" *
}
