Feature: User Features
As a user I want to be able to Sign Up or Log In when I visit the home page so that I can use the website.

Scenario: Create a user account
Given I visit the index
When I click the Sign up link
When I fill in "Email" with "test@user.com"
When I fill in "Password" with "password#1"
When I fill in "Password confirmation" with "password#1"
When I click the "Sign up" button
Then I should see "Welcome! You have signed up successfully."

Scenario: Sign In as a user
Given I am a registered user
Given I visit the index
When I click the Sign in link
When I fill in "Email" with "test@user.com"
When I fill in "Password" with "password#1"
When I click the "Log in" button
Then I should see "Signed in successfully."