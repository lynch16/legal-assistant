require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe "validations" do
    it "is valid with a name, tax_id and address" do
      entity = build(:entity)
      expect(entity).to be_valid
    end
    it "is invalid without a name" do
      entity = build(:entity, name: nil)
      entity.valid?
      expect(entity.errors[:name]).to include("can't be blank")
    end
    it "is invalid without an address" do
      entity = build(:entity, address: nil)
      entity.valid?
      expect(entity.errors[:address]).to include("can't be blank")
    end
  end

  it "has a valid factory" do
    expect(build(:entity)).to be_valid
  end
end
