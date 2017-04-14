require 'rails_helper'

RSpec.describe "LegalAssistants", type: :request do
  before :each do
    100.times do |i|
      build(:loan)
    end 
    @loan = Loan.all.first
  end

  describe "GET /loans" do
    it "works! (now write some real specs)" do
      get loans_path
      expect(response).to have_http_status(200)
    end

    it "display some loans list" do
      visit loans_path
      expect(page).to have_content @loan.name
    end
  end
end
