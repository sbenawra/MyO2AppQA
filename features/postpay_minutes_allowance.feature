Feature: Check My Minutes Allowances as a Postpay user
  As a user of the My O2 app, I want to be able to sign in and check my minutes allowances

#  TODO - Uncompleted test
  Scenario: As a User with O2 to O2 minutes, I want to check that the O2 to O2 allowance message is displayed
    Given I have logged in as "550000000001" with "password" and setup my "1234"
    When I see the Home page
    And I press the Navigation Menu button
    And I select "My Allowances" from the navigation menu
    Then I should see the My allowances page
    When I press the Minutes widget
    Then I should see a minutes allowance for "O2 to O2, anytime minutes"