Given(/^There is a Forum$/) do
  Forum.create!(name: "Test forum name", description: "test description with a minimum of 20 characters..", user_id: User.first.id)
  expect(Forum.last.name).to eq("Test forum name")
end

When(/^I click the foo link$/) do
  visit root_path
  wait(1.second)
end

World(Populate_methods)
# Available methods include:
# find_or_create_posts(num)                     <- Will create a single Forum and User.
# find_or_create_forums(num)                    <- Will create a single User if one does not exist
# find_or_create_user(email=nil, password=nil)  <- will return with a fail message if supplied with single email (no pass) and it DOESN'T exist
