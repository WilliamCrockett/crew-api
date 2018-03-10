require 'rails_helper'

RSpec.describe "EventCrews", type: :request do
  describe "GET /event_crews" do
    it "works! (now write some real specs)" do
      get event_crews_path
      expect(response).to have_http_status(200)
    end
  end
end
