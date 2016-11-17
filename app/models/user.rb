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
      post = Post.find(co.commentable_id)
      @comment_hash.push( { comment: co.body, post: post.title} )
    end
    @comment_hash
  end
end