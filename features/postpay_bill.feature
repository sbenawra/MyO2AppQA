Feature: Sign In As Postpay user to check Home
  As a user of the My O2 app
  I want to be able to sign in and check the Home Screen


  Scenario: As a CCA user, I want to check my latest bill the App
    Given I have logged in as "550000000001" with "password" and setup my "1234"
    When I see the Home page
    Then I should see the latest bill widget containing the text "Your latest airtime bill* is" with cost "£355.81"
    And I should see the information message "*This is your airtime bill only, you also have a separate monthly payment for your phone plan."
    When I press the latest bill widget
    Then I should see the My Bill page
    And I should see the latest bill details widget containing the text "Latest airtime bill*" with cost "£355.81"
    And I should see You were billed on with date "16.10.2012"
    And I should see Payment due on with date "28.10.2012"
    And I should see Balance due as "£655.81"