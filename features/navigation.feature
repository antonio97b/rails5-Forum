Feature: Navigation features

Scenario: As a user I want to be able to see the "Hot forums" link from a non-index page.
Given There is a User
Given There is a Forum
Given I visit the index
When I click the "Test forum name" link
Then I should see "Hot forums"

Scenario: As a user I _don't_ want to be able to see the "Hot forums" link from the index.
Given There is a User
Given There is a Forum
Given I visit the index
Then I should not see "Hot forums"

Scenario: As a user I want to be able to go to see all the Forums via the nav bar.
Given There is a User
Given There is a Forum
Given I visit the index
When I click the "All forums" link
Then I should see "All forums"