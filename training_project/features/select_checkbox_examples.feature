Feature: Select box and check box examples
  Scenario: Checking a check box
    When I open capital one website
    Then I hover over credit cards and click browse cards
    And I verify the page-heading to be "Compare Credit Cards"
    Then I click popular cards checkbox

  Scenario: Radio button click
    When I open capital one website
    Then I hover over credit cards and click browse cards
    And I verify the page-heading to be "Compare Credit Cards"
    Then I click excellent credit radio button

  Scenario: Select box example by text


  Scenario: Select box example by value
