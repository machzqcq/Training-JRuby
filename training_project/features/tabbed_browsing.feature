Feature: To demonstrate tabbed browsing
  Scenario: Open new tab in browser
    When I open capital one website
    And I open a new tab in browser
    Then I open stackoverflow website and print title
