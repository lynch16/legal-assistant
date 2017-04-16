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

  describe "associations" do
    it "has many loans" do
      assc = described_class.reflect_on_association(:loans)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
    it "has many loan_guarantees" do
      assc = described_class.reflect_on_association(:loan_guarantees)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
    it "has many principals" do
      assc = described_class.reflect_on_association(:principals)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end

  it "has a valid factory" do
    expect(build(:entity)).to be_valid
  end
end
