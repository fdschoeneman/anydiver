Feature: User sign up
  
  Background:
    Given there are no emails
    And I am not logged in
    And no user exists with an email "unregistered@sender.com"
    And no user exists with an email "unregistered@recipient.com"
    And a user does exist with an email "registered@sender.com"
    And a user does exist with an email "registered@recipient.com"

  Scenario: Successful signup via website
    Given I am on the home page
    And I follow the "Sign up" link
    And I fill in "sarah.silverman@test.com" for user_email 
    And I fill in "password" for user_password
    And I fill in "password" for user_password_confirmation
    And I press "Sign up"
    Then I should see a notice with "a confirmation link has been sent"
    And "sarah.silverman@test.com" should have 1 email with subject "Confirmation instructions"
    When I open the email to "sarah.silverman@test.com"
    And I follow the confirmation link in the email
    Then I should see a notice with "Your account was successfully confirmed."

