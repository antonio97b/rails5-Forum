Given(/^There is a User$/) do
  User.create!(email: "user@test.com", password: "password#1")

  expect(User.first.email).to eq("user@test.com")
end

Then(/^I should not see "([^"]*)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end