Feature: Sign in
  In order to get access to protected sections of the site
  As a user
  I want to sign in

  Background:
  Given there are no emails
    And I am on the home page
    And I follow the "Sign in" link

    Scenario: Unregistered user attempts to log in
      Given no user exists with an email of "unregistered@sender.com"
      And I fill in "Email" with "unregistered@sender.com"
      And I fill in "Password" with "notregisteredpassword"
      And I press "Sign in"
      Then I should see a notice with "Invalid email or password."
      
    Scenario: Registered user enters wrong password
      Given a user does exist with an email "registered@signuptester.com"
      Given I fill in "Email" with "registered@signuptester.com"
      And I fill in "Password" with "wrongpassword"
      And I press "Sign in"
      Then I should see a notice with "Invalid email or password."
    
    Scenario: Registered user signs in
      Given a user does exist with an email "registered@signuptester.com"
      And I fill in "Email" with "registered@signuptester.com"
      And I fill in "Password" with "password"
      And I press "Sign in"
      Then I should see a notice with "Signed in" 
