Feature: Sign Out
  As a user of the My O2 app
  I want to be able to Sign Out

  Background:
    Given I am Logged in

  Scenario: When I Sign Out of the App I should be taken to the Log in Screen
    Given I press the Settings Menu button
    When I select Sign Out
    And I press OK to Sign Out
    Then I am on the username and password screen

  Scenario: When I select Sign Out and then Cancel I should remain signed in
    Given I press the Settings Menu button
    When I select Sign Out
    And I press Cancel
    Then I should see the Menu Bar
