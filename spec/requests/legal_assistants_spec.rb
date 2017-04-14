require 'rails_helper'

RSpec.describe "LegalAssistants", type: :request do
  describe "GET /legal_assistants" do
    it "works! (now write some real specs)" do
      get legal_assistants_path
      expect(response).to have_http_status(200)
    end

    it "display some loans list" do
      visit products_path
      page.should have_content "Francistown"
    end
  end
end
