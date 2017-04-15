FactoryGirl.define do
  factory :property do
      address { {street: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zipcode: Faker::Address.zip_code} }
  end
end
