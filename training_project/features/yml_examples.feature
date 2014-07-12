Feature: Understanding yml files
  Scenario: Reading from a yml file
    When I open a yml file
    Then I print the hash

  Scenario: Reading and printing keys and values
    When I open a yml file
    Then I print the keys and values

  Scenario: Reading and printing keys values using ruby enumeration
    When I open a yml file
    Then I print keys values using ruby enumerations