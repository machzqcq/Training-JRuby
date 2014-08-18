Feature: Mouse hover example
  Scenario: mouse over example
    When I open capital one website
    Then I hover over credit cards

  Scenario: mouse over example using perform
    When I open capital one website
    Then I hover over credit cards using perform

  Scenario: mouse over and click browse all cards
    When I open capital one website
    Then I hover over credit cards and click browse cards

  Scenario: mouse over and click browse all cards and verify title
    When I open capital one website
    Then I hover over credit cards and click browse cards
    And I verify the page-heading to be "Compare Credit Cards"