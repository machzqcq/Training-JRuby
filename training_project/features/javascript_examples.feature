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

  Scenario: Load javascript framework
    When I load jquery framework
    Then I execute a jquery function on the website

  Scenario: Handling jquery ajax website
    When I load jquery framework
    Then I wait for jquery ajax calls to complete and progress


  Scenario: Handling prototype ajax website
    When I load prototype framework
    Then I wait for prototype ajax calls to complete and progress


  Scenario: Handling YUI ajax website
    When I load yui framework
    Then I wait for yui ajax calls to complete and progress