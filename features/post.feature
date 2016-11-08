Feature: Post Features

Scenario: When logged in, I want to be able to create a new post on an existing forum.
Given I am logged in
Given There is a Forum
Given I am on the index
When I click the "Test forum name1" link
When I click the "Add Post" link
When I fill in "Title" with "Test Title"
When I fill in "Description" with "A description."
When I click the "Create Post" button
Then I should see "Post was successfully created."



# Scenario: When not logged in, I don't want to be able to create a new post on an existing forum.
