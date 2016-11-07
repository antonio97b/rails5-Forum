Given(/^I am logged in$/) do
  find_or_create_user
  visit user_session_path
  fill_in "Email", with: "test@user.com"
  fill_in "Password", with: "password#1"
  click_button "Log in"
  expect(page).to have_content("Signed in successfully.")
end

When(/^I visit the "([^"]*)" page$/) do |route|
  "#{route}_path"
end

When(/^I click the first post$/) do
  post_title   = Post.first.title
  forum_name  = Forum.first.name
  visit root_path
  click_link forum_name
  click_link post_title
  expect(page).to have_content post_title
end

World(Populate_methods)
# Available methods include:
# find_or_create_posts(num)                     <- Will create a single Forum and User.
# find_or_create_forum                          <- Will create a single User
# find_or_create_user(email=nil, password=nil)  <- will return with a fail message if supplied with single email (no pass) and it DOESN'T exist
