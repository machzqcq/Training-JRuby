Feature: This is my first example feature

  Scenario: Open capital one website
    When I open capital one website

  # open cucumber.yml and output html reports using --format html --out reports.html
  Scenario: Open website and print title
    When I open capital one website
    Then I print the title

  Scenario: Expect wrong title
    When I open capital one website
    Then I expect the title to be "blah"

  Scenario: Click the Sign in button
    When I open capital one website
    Then I click sign-in button