require "rails_helper"

RSpec.describe PlaceService do
  describe "Place Service request response path" do
    it "finds place", :vcr do
      params = "crown burger"
      place_serv = PlaceService.new.find_place(params)[:candidates].first
      # require 'pry'; binding.pry
      expect(place_serv).to be_a(Hash)
      expect(place_serv).to have_key(:name)
      expect(place_serv).to have_key(:photos)
      expect(place_serv[:photos]).to be_an(Array)
    end
  end
end