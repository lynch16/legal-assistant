require 'rails_helper'

RSpec.describe Property, type: :model do
  describe "validations" do
    it "is valid with an address" do
      property = build(:property)
      expect(property).to be_valid
    end
    it "is invalid without a street" do
      address = {
        city: 'Anywhere',
        state: 'NH',
        zipcode: "01234"
      }
      property = build(:property, address: address)
      property.valid?
      expect(property.errors[:address]).to include("Street cannot be blank")
    end
    it "is invalid without a city" do
      address = {
        street: '123 Main Street',
        state: 'NH',
        zipcode: "01234"
      }
      property = build(:property, address: address)
      property.valid?
      expect(property.errors[:address]).to include("City cannot be blank")
    end
    it "is invalid without a state" do
      address = {
        street: '123 Main Street',
        city: 'Anywhere',
        zipcode: "01234"
      }
      property = build(:property, address: address)
      property.valid?
      expect(property.errors[:address]).to include("State cannot be blank")
    end
    it "is invalid without a zipcode" do
      address = {
        street: '123 Main Street',
        city: 'Anywhere',
        state: 'NH',
      }
      property = build(:property, address: address)
      property.valid?
      expect(property.errors[:address]).to include("Zipcode cannot be blank")
    end
  end

  it "has a valid factory" do
    expect(build(:property)).to be_valid
  end
end
