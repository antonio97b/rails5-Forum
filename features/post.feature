Feature: Post Features

Scenario: When logged in, I want to be able to create a new post on an existing forum.
Given I am logged in
Given There is a Forum
When I visit the index
When I click the "Test Forum" link
When I click the "Add post" link
When I fill in "Title" with "Test Title"
When I fill in "Description" with "A description."
When I click the "Create post" button
Then I should see "something."



# Scenario: When not logged in, I don't want to be able to create a new post on an existing forum.
