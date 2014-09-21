# Example taken from http://elementalselenium.com/tips/50-hovers
Feature: Mouse over and wait until hover happens
  Scenario: Hover and wait before moving to next action
    When I navigate to elemental selenium website
    And I hover over avatar
    Then I wait for caption to appear before progressing