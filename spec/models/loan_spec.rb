require 'rails_helper'

RSpec.describe Loan, type: :model do
  describe "validations" do
    it "is valid with a name, number and amount" do
      loan = build(:loan)
      expect(loan).to be_valid
    end
    it "is invalid without a name" do
      loan = build(:loan, name: nil)
      loan.valid?
      expect(loan.errors[:name]).to include("can't be blank")
    end
    it "is invalid without a number" do
      loan = build(:loan, number: nil)
      loan.valid?
      expect(loan.errors[:number]).to include("can't be blank")
    end
    it "is invalid without a amount" do
      loan = build(:loan, amount: nil)
      loan.valid?
      expect(loan.errors[:amount]).to include("can't be blank")
    end
  end

  # describe "associations" do
  #   it "has many banks" do
  #     assc = described_class.reflect_on_association(:banks)
  #     expect(assc.macro).to eq :has_many_and_belongs_to
  #   end
  # end

  it "has a valid factory" do
    expect(build(:loan)).to be_valid
  end
end
