################################################################################
# Google Chrome
################################################################################
chrome_open_tab() {
  open --new -a "Google Chrome" --args $@
}

chrome_open_window() {
  open --new -a "Google Chrome" --args --new-window $@
}

################################################################################
# Geocent
################################################################################
geocent_email() {
  chrome_open_tab "https://outlook.office.com/mail/inbox"
}

geocent_timesheet() {
  chrome_open_tab "https://www.costpointfoundations.com/Geocent/portal.html"
}
