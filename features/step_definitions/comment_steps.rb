Given(/^I am logged in$/) do
  email = 'test@user.com'
  password = 'password#1'
  User.create!( :email => email, :password => password, :password_confirmation => password )

  visit user_session_path
  fill_in "Email", with: "test@user.com"
  fill_in "Password", with: "password#1"
  click_button "Log in"
  expect(page).to have_content("Signed in successfully.")
end

Given(/^I have (\d+) posts$/) do |num|
  num = num.to_i
  find_or_create_posts(num)
  expect(Post.first.title).to eq("Test title1")
  expect(Post.count).to eq(num)
end

When(/^I visit the "([^"]*)" page$/) do |route|
  "#{route}_path"
end

When(/^I click the first post$/) do
  post_title   = @posts.first.title
  forum_name  = @forum.name
  visit root_path
  click_link forum_name
  click_link post_title
  save_and_open_page
  expect(page).to have_content post_title
end

Then(/^I should see (\d+) comment$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

World(Populate_methods)
# Available methods include:
# find_or_create_posts(num)                     <- Will create a single Forum and User.
# find_or_create_forum                          <- Will create a single User
# find_or_create_user(email=nil, password=nil)  <- will return with a fail message if supplied with single email (no pass) and it DOESN'T exist
