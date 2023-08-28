require "rails_helper"

RSpec.describe PlaceFacade do
  describe "Place Facade" do
    it "searches for a place", :vcr do
      query = "crown burger"
      place = PlaceFacade.new(query).find_place
      

      expect(place).to be_a Place
      expect(place.id).to eq "null"
      expect(place.type).to eq "place"
      expect(place.name).to be_a String
      expect(place.photo).to be_a String
    end

    it "no places response sad path", :vcr do
      query = "xxxxxxxxxxxxxxxx"
      place = PlaceFacade.new(query).find_place
      expect(place).to eq []
      expect(place).to_not be_a Place
    end

    it "no photo response sad path", :vcr do
      query = "xxxxxxxx" # this specific query does return a place, but no photo
      place = PlaceFacade.new(query).find_place
      expect(place).to eq []
      expect(place).to_not be_a Place
    end
  end
end