class Comment < ApplicationRecord
  validates_presence_of :body

  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
end
