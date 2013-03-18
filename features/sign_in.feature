Feature: Sign In
  As a user of the My O2 app
  I want to be able to sign in, set pin, use an existing pin

  Scenario Outline: As a first time user I wish to sign into the app and set up a Pin so that I can check my notifications
    Given I am on the username and password screen
    When I enter my account credentials as username "<username>" and password "<password>"
    And I attempt to sign in successfully
    And I set my PIN to "<pin>"
    Then I should see the Menu Bar
    And I should see the Home page
  Examples:
    | username     | password | pin  |
    | 550000000001 | password | 1234 |

  Scenario Outline: As a user who has already setup a Pin, I wish to enter my existing Pin and so that I can check my notifications
    Given I have logged in as "<username>" with "<password>" and setup my "<pin>"
    When I am on the enter PIN page
    And I enter my PIN to "<pin>"
    Then I should see the Menu Bar
    And I should see the Home page
  Examples:
    | username     | password | pin  |
    | 660000000001 | password | 1234 |
