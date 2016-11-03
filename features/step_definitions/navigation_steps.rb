Then(/^I should not see "([^"]*)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link link
end

Given(/^I am on the index$/) do
  visit root_path
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

# Then(/^I should see "([^"]*)" comment$/) do |arg1|
#   comment_body = Forum.first.post.first.comment.first.body
#   expect(page).to have_content(comment_body)
# end
