require 'rails_helper'

RSpec.describe Comment, type: :model do

  it {should belong_to :user}

  before do
    @user  =                FactoryGirl.create(:user)
    @forum =                FactoryGirl.create(:forum, user: @user)
    @post  =                FactoryGirl.create(:post, user: @user, forum: @forum)
    @top_level_comment =    FactoryGirl.create(:comment, body: 'top level comment.', user: @user, commentable_type: 'Post', commentable_id: @post.id)
    @child_comment =        FactoryGirl.create(:comment, body: 'Comment one level down.', user: @user, commentable_type: 'Comment', commentable_id: @top_level_comment.id)
    @child_child_comment =  FactoryGirl.create(:comment, body: 'Comment two levels down.', user: @user, commentable_type: 'Comment', commentable_id: @child_comment.id)
  end

  it 'should allow a Comment to respond to a post' do
    comment = @post.comments.create!(body: 'Testing commenting on a Post.', user_id: @user.id)
    expect(@post.comments).to include(comment)
  end

  it 'should allow a Comment to respond to another Comment.' do
    comment1 = @post.comments.create!(body: 'test comment.', user_id: @user.id)
    comment2 =  comment1.comments.create!(body: 'Comment response to test body.', user_id: @user.id)

    expect(comment1.comments).to eq([comment2])
  end

  ### Methods ###

  describe 'find_parent_post' do
    it 'should find the parent post of a nested comment' do
      # @child_child_comment's parent post is @post
      expect(@child_child_comment.find_parent_post).to eq(@post)
    end
  end
end

