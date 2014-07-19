Feature: Using page object pattern
  Scenario: Google search using page object pattern
    When I open "http://www.google.com" website
    And I search for "pradeep@seleniumframework.com"
    Then I should get some results