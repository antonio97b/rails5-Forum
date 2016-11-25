require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many :forums}
  it {should have_many :posts}

  before do
    @user  =                FactoryGirl.create(:user)
    @forum =                FactoryGirl.create(:forum, user: @user)
    @post  =                FactoryGirl.create(:post, user: @user, forum: @forum)
    @top_level_comment =    FactoryGirl.create(:comment, body: 'top level comment.', user: @user, commentable_type: 'Post', commentable_id: @post.id)
    @child_comment =        FactoryGirl.create(:comment, body: 'Comment one level down.', user: @user, commentable_type: 'Comment', commentable_id: @top_level_comment.id)
    @child_child_comment =  FactoryGirl.create(:comment, body: 'Comment two levels down.', user: @user, commentable_type: 'Comment', commentable_id: @child_comment.id)

    @post2  =               FactoryGirl.create(:post, user: @user, forum: @forum)
    @top_level_comment2 =   FactoryGirl.create(:comment, body: 'top level comment.', user: @user, commentable_type: 'Post', commentable_id: @post2.id)
    @top_level_comment3 =   FactoryGirl.create(:comment, body: 'top level comment.', user: @user, commentable_type: 'Post', commentable_id: @post2.id)
  end


  ### methods ###

  describe 'self.find_all_user_comments(user)' do
    it 'should gather all user comments and put them in a hash along with the post the comment belonged to' do
      hashes = User.find_all_user_comments(@user)

      expect(hashes).to eq([  { comment: @top_level_comment,   post: @post },
                              { comment: @child_comment,       post: @post },
                              { comment: @child_child_comment, post: @post },
                              { comment: @top_level_comment2,  post: @post2 },
                              { comment: @top_level_comment3,  post: @post2 }
                          ])
    end
  end
end