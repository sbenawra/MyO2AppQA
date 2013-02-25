Feature: Sign In
  As a user of the My O2 app
  I want to be able to sign in, set pin, use an existing pin

  Scenario: As a first time user I wish to sign into the app and set up a Pin so that I can check my notifications
    Given I am on the username and password screen
    When I enter my account credentials as username "root.boot" and password "test123"
    And I attempt to sign in successfully
    And I set my PIN to "1234"
    Then I should see the Menu Bar
    And I should see the Home page

  Scenario: As a user who has already setup a Pin, I wish to enter my existing Pin and so that I can check my notifications
    Given I am on the enter PIN page
    When I set my PIN to "1234"
    Then I should see the Menu Bar
    And I should see the Home page