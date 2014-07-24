# Find code in project and its dependencies
wtf() {
  bundle show --paths | xargs ag "$1" .
}

capybara_failure_png()  { open `ls -1t tmp/capybara/*.png | head -1` }
capybara_failure_html() { open `ls -1t tmp/capybara/*.html | head -1` }

