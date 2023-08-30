require "rails_helper"

RSpec.describe PlaceFacade do
  describe "Place Facade" do
    it "searches for a place", :vcr do
      query = "crown burger"
      place = PlaceFacade.new(query).find_place
      

      expect(place).to be_a Place
      expect(place.id).to eq "null"
      expect(place.type).to eq "restaurant"
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

    it "finds random resturants", :vcr do
      query = Location.new(data = {
        :results=> [
          :geometry=> {
            :location=> {
              :lat=>"39.7752563",
              :lng=>"-105.0498966",
        }}]
      })
      restaurants = PlaceFacade.new(query).find_random_restaurants

      expect(restaurants).to be_an(Array)
      expect(restaurants.count).to eq(20)
      expect(restaurants.first).to be_a(Place)
      expect(restaurants.first.name).to be_a(String)
      expect(restaurants.first.photo).to be_a(String)
      expect(restaurants.first.price).to be_a(Integer)
      expect(restaurants.first.rating).to be_a(Float)
    end
  end
end