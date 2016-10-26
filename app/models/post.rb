class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :forum_id, presence: true

  belongs_to :user
  belongs_to :forum

  has_many :comments, as: :commentable
end