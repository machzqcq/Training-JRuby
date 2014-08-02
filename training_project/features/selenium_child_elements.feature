Feature: Retrieving child elements using selenium api
  Scenario: Retrieve img elements from an element
    When I open the puppies website
    And I get the row element
    Then I retrieve image child element
  Scenario: Retrieve div and then image element
    When I open the puppies website
    And I get the row element
    Then I retrieve the div and then subsequently the image element
  Scenario: Retrieve div and then image element chained
    When I open the puppies website
    And I get the row element
    Then I retrieve the div and then subsequently the image element chained
  Scenario: Retrieve name element
    When I open the puppies website
    And I get the row element
    Then I retrieve the name element
  Scenario: Retrieve details element
    When I open the puppies website
    And I get the row element
    Then I retrieve the details element
  Scenario: Retrieve 2nd h4
    When I open the puppies website
    And I get the row element
    Then I retrieve the h4 element
  Scenario: Click on view details using multiple locator strategies
    When I open the puppies website
    And I get the row element
    Then I click on view details by passing tagname "input" and class "rounded_button"