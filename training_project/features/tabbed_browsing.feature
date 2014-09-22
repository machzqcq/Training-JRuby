# Technically there is no difference between opening a new tab and window
# As per Jim Evans (author of webdriver), no point in trying to open a tab
# https://groups.google.com/forum/#!topic/selenium-users/0RTox3c2mZ8
 #http://rubydoc.info/gems/selenium-webdriver/2.2.0/Selenium/WebDriver/ActionBuilder

Feature: To demonstrate tabbed browsing
  Scenario: Open new tab in browser
    When I open capital one website
    And I open a new tab in browser
    Then I open stackoverflow website and print title
