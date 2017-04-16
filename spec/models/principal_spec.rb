require 'rails_helper'

RSpec.describe Principal, type: :model do
  describe "validations" do
    it "is valid with a name, tax_id and address" do
      principal = build(:principal)
      expect(principal).to be_valid
    end
    it "is invalid without a name" do
      principal = build(:principal, name: nil)
      principal.valid?
      expect(principal.errors[:name]).to include("can't be blank")
    end
  end

  describe "associations" do
    it "has many entities" do
      assc = described_class.reflect_on_association(:entities)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end

  it "has a valid factory" do
    expect(build(:principal)).to be_valid
  end
end
