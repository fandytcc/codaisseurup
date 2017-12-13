FactoryBot.define do
  factory :event do
    name              { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          30
    includes_food     true
    includes_drinks   true
    starts_at         DateTime.new(2017, 12, 23, 9, 35, 0)
    ends_at           DateTime.new(2017, 12, 23, 9, 35, 0)
    user              { build(:user) }
    categories        { [build(:category)] }
    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
