FactoryGirl.define do

  factory :post do
    user
    forum
    title 'Post 1'
    description 'This is a test description for Post 1'
  end
end