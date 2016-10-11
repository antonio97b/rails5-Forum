# require 'rails_helper'

# RSpec.describe "posts/edit", type: :view do
#   before(:each) do
#     @post = assign(:post, Post.create!(
#       :title => "MyString",
#       :description => "MyText",
#       :users => nil,
#       :forums => nil
#     ))
#   end

#   it "renders the edit post form" do
#     render

#     assert_select "form[action=?][method=?]", post_path(@post), "post" do

#       assert_select "input#post_title[name=?]", "post[title]"

#       assert_select "textarea#post_description[name=?]", "post[description]"

#       assert_select "input#post_users_id[name=?]", "post[users_id]"

#       assert_select "input#post_forums_id[name=?]", "post[forums_id]"
#     end
#   end
# end
