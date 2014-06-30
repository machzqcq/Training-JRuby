Feature: Able to click View details for puppies
  Scenario Outline: Click view details for multiple puppies by index
    When I open the puppies website
    Then I click view details for puppy indexed "<index>"
  Examples:
    |index|
    |0    |
    |1    |
    |2    |
    |3    |

   Scenario Outline:Click view details for multiple puppies by name
     When I open the puppies website
     Then I click view details for puppy "<puppy_name>"
   Examples:
     |puppy_name|
     |Brook     |
     |Hanna     |
     |Maggie Mae|
     |Ruby Sue  |
