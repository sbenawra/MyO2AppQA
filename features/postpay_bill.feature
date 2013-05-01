Feature: Check My Bill Details as a Postpay user
  As a user of the My O2 app, I want to be able to sign in and check my bill details


  Scenario: As a CCA user, I want to check my latest bill in the App
    Given I have logged in as "550000000001" with "password" and setup my "1234"
    When I see the Home page
    Then I should see the latest bill widget containing the text "Your latest airtime bill is" with cost "£355.81*"
    And I should see the information message "*This is your airtime bill only. You also have a separate monthly payment for your phone plan."
    When I press the latest bill widget
    Then I should see the My Bill page
    And I should see the latest bill details widget containing the text "Latest airtime bill" with cost "£355.81*"
    And I should see You were billed on with date "16.10.2012"
    And I should see Payment due on with date "28.10.2012"
    And I should see Balance due as "£655.81"
    And I should see the information message "*This is your airtime bill only. Sign in to o2.co.uk/myO2 to view your phone plan payment." in the latest bill details widget


  Scenario: As a CCA user, I want to make a payment towards my airtime bill
    Given I have logged in as "550000000001" with "password" and setup my "1234"
    When I see the Home page
    And I press the latest bill widget
    Then I should see the My Bill page
    Then I should see the Make a payment widget containing the message "You can make a payment towards your O2 bill over the phone."
    Then I press the Make a payment widget
    Then I should see the Make a payment dialog containing the message "You can make a payment towards your airtime bill and phone plan by getting in touch with our customer service team."
    When I press ok to make a payment
    #TODO Then I should see the dialler with number "2729"
