class Comment < ApplicationRecord
  validates_presence_of :body
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
end
