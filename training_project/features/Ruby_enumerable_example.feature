Feature: Ruby Enumerables

  Scenario: Click brook view details using ruby enumerable
    When I open the puppies website
    Then I click view "brook" view details

  Scenario: Find page 2 and click it
    When I open the puppies website
    Then I find page "2" and click it

  Scenario: Find and print male, female puppies
    When I open the puppies website
    Then I find and print all male and female puppies

  Scenario: Find and print male, female puppies on page 2
    When I open the puppies website
    And I navigate to page "2"
    Then I find and print all male and female puppies