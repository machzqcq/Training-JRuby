Feature: This is my first feature learning cucumber

  Scenario: Opening puppies website
    When I open the puppies website

# open cucumber.yml and output html reports using --format html --out reports.html
  Scenario: Open website and print title
    When I open the puppies website
    Then I print the title

  Scenario: Expect wrong title
    When I open the puppies website
    Then I expect the title to be "Sallies puppies"

  Scenario: Click the first view details button
    When I open the puppies website
    Then I click view details button for Brook

