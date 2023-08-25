require "rails_helper"

RSpec.describe PlaceService do
  describe "Place Service request response path" do
    it "finds place", :vcr do
      get "/api/v1/places_search?location=denver,co&term=crown burger"
    end
  end
end