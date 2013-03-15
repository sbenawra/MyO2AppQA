#Feature: Sign Out
#  As a user of the My O2 app
#  I want to be able to Sign Out
#
#  Scenario Outline: When I Sign Out of the App I should be taken to the Log in Screen
#    Given I have logged in as "<username>" with "<password>" and setup my "<pin>"
#    When I press the Settings Menu button
#    And I select Sign Out
#    And I press OK to Sign Out
#    Then I am on the username and password screen
#  Examples:
#    | username     | password | pin  |
#    | 550000000001 | password | 1234 |
#
#  Scenario Outline: When I select Sign Out and then Cancel I should remain signed in
#    Given I have logged in as "<username>" with "<password>" and setup my "<pin>"
#    When I press the Settings Menu button
#    And I select Sign Out
#    And I press Cancel
#    Then I should see the Menu Bar
#  Examples:
#    | username     | password | pin  |
#    | 660000000001 | password | 1234 |
