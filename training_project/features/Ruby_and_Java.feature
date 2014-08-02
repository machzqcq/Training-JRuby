Feature: Jruby the best of both worlds
  Scenario: Mixing Ruby and java, get env variable from java and launch selenium using ruby
    When I import java lang system and print version
    And I launch browser and print the title

  Scenario: Using a custom java library gson
    When I import gson library
    Then I use it and perform a primitive operation on gson
    And again perform some ruby operations