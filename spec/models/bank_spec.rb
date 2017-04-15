require 'rails_helper'

RSpec.describe Bank, type: :model do
  describe "validations" do
    it "is valid with a name, and address" do
      bank = build(:bank)
      expect(bank).to be_valid
    end
    it "is invalid without a name" do
      bank = build(:bank, name: nil)
      bank.valid?
      expect(bank.errors[:name]).to include("can't be blank")
    end
    it "is invalid without an address" do
      bank = build(:bank, address: nil)
      bank.valid?
      expect(bank.errors[:address]).to include("can't be blank")
    end
  end

  it "has a valid factory" do
    expect(build(:bank)).to be_valid
  end
end
