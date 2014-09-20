# http://phantomjs.org/release-1.8.html
# Download and place phantomjs.exe in PATH.
# Start "phantomjs --webdriver=9134"
# Because of before and after blocks in hooks.rb, the browser will still pop up

Feature: Example to show headless execution using phantomjs
  Scenario: Open google website and print title
    When I open a website using selenium with phantomjs
    Then I print the title for the website