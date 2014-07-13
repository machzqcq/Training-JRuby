Feature: Read and write xml/html using Nokogiri

  Scenario: Print all links on Google search using css and selenium
    When I open google search with "http://www.google.com/search?q=sparklemotion"
    Then I print all the link content using css

  Scenario: Print all links on google search using css and openuri
    When I open google search with openuri "https://www.google.com/search?q=sparklemotion"
    Then I print all the link content using css

  Scenario: Print all links on google search using xpath and selenium
    When I open google search with "http://www.google.com/search?q=sparklemotion"
    Then I print all the link content using xpath

  Scenario: Print all links on google search using xpath and openuri
    When I open google search with openuri "https://www.google.com/search?q=sparklemotion"
    Then I print all the link content using xpath

  Scenario: Print all links on google search using mix,match and openuri
    When I open google search with openuri "https://www.google.com/search?q=sparklemotion"
    Then I print all the link content using mix match

  Scenario: Print all links on google search behind firewall
    When I open google search behind firewall "https://www.google.com/search?q=sparklemotion"
    Then I print all the link content using mix match

  Scenario: Nokogiri xml builder example
    When I use nokogiri builder to build an xml
    Then I print the build xml

  Scenario: Nokogiri xml builder example that uses underscore for special tags
    When I use nokogiri builder to build an xml with underscores
    Then I print the build xml that has underscore to disambiguate from ruby methods

  Scenario: Nokogiri xml builder example to construct tag attributes
    When I use nokogiri builder to build an xml with tag attributes
    Then I print the build xml that has underscore to disambiguate from ruby methods