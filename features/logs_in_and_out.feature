Feature: Login feature
  As a user of the My O2 app
  I want to be able to view my notifications
  In order to view my bill, recent charges and usage warnings

  Scenario: As a first time user I wish to sign into the app, check my notifications and sign out
    Given I am on the username and password screen
    When I enter my account credentials as username "root.boot" and password "test123"
    And I attempt to sign in
    Then I am on the PIN screen
    When I set my PIN to "1234"
