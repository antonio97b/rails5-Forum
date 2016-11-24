FactoryGirl.define do
  factory :comment do
    user
    body 'This is a test comment.'
  end
end