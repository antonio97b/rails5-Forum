require 'rails_helper'

RSpec.describe Comment, type: :model do

  it {should belong_to :user}

  before do
    @user  = FactoryGirl.create(:user)
    @forum = FactoryGirl.create(:forum, user: @user)
    @post  = FactoryGirl.create(:post, user: @user, forum: @forum)
  end

  it "should allow a Comment to respond to a post" do
    comment = @post.comments.create!(body: "Testing commenting on a Post.", user_id: @user.id)

    expect(@post.comments).to eq([comment])
  end

  it "should allow a Comment to respond to another Comment." do
    comment1 = @post.comments.create!(body: "test comment.", user_id: @user.id)
    comment2 =  comment1.comments.create!(body: "Comment response to test body.", user_id: @user.id)

    expect(comment1.comments).to eq([comment2])
  end
end

