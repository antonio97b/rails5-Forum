SimpleCov.command_name "test:integration"

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
  fill_in field, with: text
  fill_in field, with: text
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end
