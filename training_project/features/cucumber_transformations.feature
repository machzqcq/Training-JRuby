# Open Transformations.rb in support directory
Feature: Understanding transformations
  Scenario: Transforming a string number to integer
    When I pass "2" to the step definitions
    Then I the string value is transformed to integer by transformations

  Scenario: Transforming a dollar symbol number
    When I pass dollar sign "$200" to step definitions
