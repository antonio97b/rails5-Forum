class Forum < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 20 }
  validates :user_id, presence: true

  belongs_to :user
  has_many :posts
end
