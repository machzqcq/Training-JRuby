Feature: Extract text from pdf using pdfreader
  Scenario: Print pdf raw text from local file
    When I open a pdf file
    Then I print the raw text

  Scenario: Print pdf raw text from internet
    When I open a pdf file using open-uri
    Then I print the raw text

  Scenario: Print fonts text and raw content
    When I open a pdf file
    Then I print fonts and text by page