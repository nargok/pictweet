# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    name { Faker::Name.first_name }
    text { Faker::Lorem.sentence}
  end

  factory :my_tweet do
    name { Faker::Name.first_name }
    text { Faker::Lorem.sentence}
    user_id '1'
  end
  factory :others_tweet do
    name { Faker::Name.first_name }
    text { Faker::Lorem.sentence}
    user_id '2'
  end

end
