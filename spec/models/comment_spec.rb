require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user  = FactoryGirl.create(:user)
    @forum = FactoryGirl.create(:forum, user: @user)
    @post  = FactoryGirl.create(:post, user: @user, forum: @forum)
  end

  it "should allow a Comment to respond to a post" do
    comment = @post.comments.create!(body: "Testing commenting on a Post.")

    expect(@post.comments).to eq([comment])
  end

  it "should allow a Comment to respond to another Comment." do
    comment1 = @post.comments.create!(body: "test comment.")
    comment2 =  comment1.comments.create!(body: "Comment response to test body.")

    expect(comment1.comments).to eq([comment2])
  end
end

