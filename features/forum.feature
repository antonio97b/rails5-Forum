Feature: Forum features

Scenario: As a user I want to be able to create a new forum with a valid name and description
Given I am logged in
When I click the "Create Forum" link
When I fill in "Name" with "Test Forum1"
When I fill in "Description" with "Test Description with 20 characters."
When I click the "Create Forum" button
Then I should see "Forum was successfully created."

Scenario: As a user I want to see an error when I try to make a forum with invalid parameters.
Given I am logged in
When I click the "Create Forum" link
When I fill in "Name" with "Test Forum"
When I fill in "Description" with "Test Description"
When I click the "Create Forum" button
Then I should see "Description is too short (minimum is 20 characters)"