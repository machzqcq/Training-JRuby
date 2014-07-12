Feature: Understanding json and CRUD operations

  Scenario: Parsing a json string value and accessing the hash
    When I parse a json string value
    Then I print the keys values and access a key

  Scenario: Parsing a json from file printing
    When I parse a json file
    Then I print the keys values and access a key