Feature: Sign Out
  As a user of the My O2 app
  I want to be able to Sign Out

  Background:
    Given I am Logged in

  Scenario: When I Sign Out of the App I should be taken to the Log in Screen
    When I press the Settings Menu button to view settings
    And I select Sign Out
