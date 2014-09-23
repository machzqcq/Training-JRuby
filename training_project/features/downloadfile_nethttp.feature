Feature: To demonstrate how to download a file with absolute path
  Scenario: Download yahoo messenger
    When I open yahoo messenger website
    And I get the download link to download
    Then I verify if the download file is downloaded
    And delete the file