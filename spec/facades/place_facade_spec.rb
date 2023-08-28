require "rails_helper"

RSpec.describe PlaceFacade do
  describe "Place Facade" do
    it "searches for a place", :vcr do
      query = "crown burger"
      place = PlaceFacade.new(query).find_place
      

      expect(place).to be_a(Place)
      expect(place.id).to eq("null")
      expect(place.type).to eq("place")
      expect(place.name).to be_a(String)
      expect(place.photo).to be_a(String)
    end
  end
end