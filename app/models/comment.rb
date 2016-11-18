class Comment < ApplicationRecord
  validates_presence_of :body
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable

  def find_parent_post
    return self.commentable if self.commentable.is_a?(Post)
    self.commentable.find_parent_post
  end
end
