class Forum < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 25 }

  belongs_to :user
end
