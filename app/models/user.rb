class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :forums
  has_many :posts

  def self.find_all_user_comments(user)
    @comment_hash = []
    @user_comments = Comment.where(user_id: user.id)
    @user_comments.all.each do |co|
       post = co.find_parent_post
      @comment_hash.push( { comment: co, post: post} )
    end
    @comment_hash
  end
end