require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user  = FactoryGirl.create(:user)
    @forum = FactoryGirl.create(:forum, user: @user)
  end

  it {should belong_to :user}
  it {should belong_to :forum}

  it "should not allow a post to be created without a Forum attached to it." do
    expect(@user.posts.new(title: "test title", description: "test description")).to_not be_valid
  end
end