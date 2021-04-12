################################################################################
# Google Chrome
################################################################################
bfl_chrome_open_tab() {
  open --new -a "Google Chrome" --args $@
}

bfl_chrome_open_window() {
  open --new -a "Google Chrome" --args --new-window $@
}

################################################################################
# Geocent
################################################################################
bfl_geocent_email() {
  bfl_chrome_open_tab "https://outlook.office.com/mail/inbox"
}

bfl_geocent_timesheet() {
  bfl_chrome_open_tab "https://www.costpointfoundations.com/Geocent/portal.html"
}
