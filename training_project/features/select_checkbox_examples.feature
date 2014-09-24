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
    When I open the internet website with dropdown
    And I select "Option 1" text from select box


  Scenario: Select box example by value
   When I open the internet website with dropdown
    And I select "1" value from select box
