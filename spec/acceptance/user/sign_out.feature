Feature: Sign out

  Scenario: Logged in user signs out
    Given I am registered and logged in as a user
    And I am on the home page
    And I follow the "Sign out" link
    Then I should see a notice with "Signed out successfully"