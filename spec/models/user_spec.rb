require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many :forums}
  it {should have_many :posts}
end
