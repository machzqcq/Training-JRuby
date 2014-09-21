# native events error on firefox - https://code.google.com/p/selenium/issues/detail?id=5328
# The below scenario is only for firefox
# http://elementalselenium.com/tips/63-right-click
Feature: Demonstrate right click
  Scenario: Right click using selenium action builder
    When I open context menu
    Then I right click on menu area