Feature: Reconfirmation
  As a registered but unconfirmed user
  In order to confirm my account
  I want to request a new confirmation email be sent to my email address

  Scenario: Request new confirmation
    Given I am not logged in
    And I have an account but have not confirmed it
    And I am on the sign_in path
    And I follow the "Didn't receive confirmation instructions?" link
    And I fill in my email address
    And I press "Resend confirmation instructions"
    And I should have a reconfirmation email
    When I follow the confirmation link in the email
    Then I should see a notice with "Your account was successfully confirmed. You are now signed in."
