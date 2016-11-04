SimpleCov.command_name "test:integration"

Given(/^I am on the index$/) do
  visit root_path
end

Given(/^I am a registered user$/) do
  email = 'test@user.com'
  password = 'password#1'
  User.create!(:email => email, :password => password, :password_confirmation => password)
end

When(/^I click the Sign up link$/) do
  click_link "Sign up"
end

When(/^I click the Sign in link$/) do
  click_link "Sign in"
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button button
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
  fill_in field, with: text
  fill_in field, with: text
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end
