Feature: Comment Features
As a user I want to be able comment on a post.

Scenario: View comments
Given I am logged in
Given I have 1 posts
When I visit the "/posts" page
When I click the first post
Then I should see 1 comment

# Scenario: Add a comment
# Given I am logged in
# Given I have 2 posts
# When I visit the "/posts" page
# When I click "Add comment"
# When I fill in "Body" with "test comment."
# When I click "Create Comment"
# Then I should have 1 comment
