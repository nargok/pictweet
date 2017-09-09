# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'foobar'
    nickname {Faker::Name.first_name }
  end
end
