FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "testuser#{n}@postfactory.com"
    end

    password "password#1"
  end
end