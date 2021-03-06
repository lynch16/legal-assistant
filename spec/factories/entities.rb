FactoryGirl.define do
  factory :entity do
    name { Faker::Company.name }
    address { {street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code} }
    tax_id { Faker::Number.number(8) }
  end
end
