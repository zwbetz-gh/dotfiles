################################################################################
# Google Chrome
################################################################################

bfl_chrome_open_tab() {
  open --new -a "Google Chrome" --args $@
}

bfl_chrome_open_window() {
  open --new -a "Google Chrome" --args --new-window $@
}
