Feature: Understanding cucumber tags

# Tag can be specified for a profile in cucumber.yml
# Read this post for complete information - https://github.com/cucumber/cucumber/wiki/Tags
  @Tag1
  Scenario: Scenario tag example
    When I open the puppies website

  # See hooks.rb file for this below scenario
  @Tagie
  Scenario: Launch this tagged scenario with ie
    When I open the puppies website