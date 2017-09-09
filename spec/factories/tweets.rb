# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    name { Faker::Name.first_name }
    text { Faker::Lorem.sentence}
  end
end
