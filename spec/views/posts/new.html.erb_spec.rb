# require 'rails_helper'

# RSpec.describe "posts/new", type: :view do
#   before(:each) do
#     assign(:post, Post.new(
#       :title => "MyString",
#       :description => "MyText",
#       :users => nil,
#       :forums => nil
#     ))
#   end

#   it "renders new post form" do
#     render

#     assert_select "form[action=?][method=?]", posts_path, "post" do

#       assert_select "input#post_title[name=?]", "post[title]"

#       assert_select "textarea#post_description[name=?]", "post[description]"

#       assert_select "input#post_users_id[name=?]", "post[users_id]"

#       assert_select "input#post_forums_id[name=?]", "post[forums_id]"
#     end
#   end
# end
