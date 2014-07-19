Feature: Check box and select box
  Scenario: Checking a check box
    When I open the puppies website
    And I click view details button for Brook
    And I click adopt me
    And I check box for collar
    Then I complete the adoption

  Scenario: Select box example
    When I open the puppies website
    And I click view details button for Brook
    And I click adopt me
    And I check box for collar
    And I complete the adoption
    Then I select "Check" in select box
