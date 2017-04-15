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

  it "has a valid factory" do
    expect(build(:principal)).to be_valid
  end
end
