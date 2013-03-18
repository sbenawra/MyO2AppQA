Feature: Check My Tariff Details as a Postpay user
  As a user of the My O2 app, I want to be able to sign in and check my tariff details

  Scenario: As a CCA user, I want to check my Tariff details
    Given I have logged in as "550000000001" with "password" and setup my "1234"
    When I see the Home page
    And I press the Navigation Menu button
    And I select "My Allowances" from the navigation menu
    Then I should see the My allowances page
    Then I should see My tariff widget containing the text "My airtime tariff"
    When I press the My tariff widget
    Then I should see the My tariff page with the title "My airtime tariff"