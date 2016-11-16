Feature: Navigation features

Scenario: As a user I want to be able to see the "Hot forums" link from a non-index page.
Given There is a User
Given There is a Forum
Given I am on the index
When I click the "Test forum name1" link
Then I should see "Hot forums"

Scenario: As a user I _don't_ want to be able to see the "Hot forums" link from the index.
Given There is a User
Given There is a Forum
Given I am on the index
Then I should not see "Hot forums"

Scenario: As a user I want to be able to go to see all the Forums via the nav bar.
Given There is a User
Given There is a Forum
Given I am on the index
When I click the "All forums" link
Then I should see "All forums"

Scenario: As a user I want to be able to view a specific forum and it's posts within.
Given There is a User
Given There is a Forum
Given I am on the index
When I click the "Test forum name1" link
Then I should see "Name: Test forum name1"
Then I should see "Description: test description with a minimum of 20 characters.."

Scenario: As a user I want to be able to go back to the Post's parent forum from the post view page.
Given There is a User
Given There is a Post
Given I am on the index
Given I click the "Test forum name1" link
Given I click the "Post title1" link
Then I should see "Post:"

Scenario: If I am _not_ signed in, I shouldn't see a comment form.
Given There is a Post
Given I am on the index
Given I click the "Test forum name1" link
Given I click the "Post title1" link
Then I should not see "Add a comment"
Then I should not see "Create Comment"
Then I should see "Log in to add comments"

Scenario: As a user I want to visit the control panel
Given There is a User
Given I am on the index
Then I click the "Control panel" link
Then I should see "Control Panel:"