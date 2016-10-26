FactoryGirl.define do
  factory :forum do
    user
    name "Forum Name"
    description "Forum Description with a minimum character count of 20"
  end
end