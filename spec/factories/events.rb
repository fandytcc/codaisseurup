FactoryBot.define do
  factory :event do
    name              { Faker::Lorem.words(3).join(' ') }
    categories        "Music"
    capacity          30
    starts_at         DateTime.new(2017, 12, 23, 9, 35, 0)
    ends_at           DateTime.new(2017, 12, 23, 9, 35, 0)
    listing_name      { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location           { Faker::Location.city }
    includes_food     true
    includes_drinks   true
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
