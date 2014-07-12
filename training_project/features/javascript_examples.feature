Feature: Java script examples
  Scenario: Simple javascript example using selenium
    When I open the puppies website
    Then I print window location pathname

  Scenario: Print html document text
    When I open the puppies website
    Then I print the document text

  Scenario: Print window title
    When I open the puppies website
    Then I print the window title