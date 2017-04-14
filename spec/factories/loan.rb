FactoryGirl.define do
  factory :loan do
    name { Faker::Company.name }
    number { Faker::Number.number(7) }
    amount { Faker::Commerce.price }
  end
end
