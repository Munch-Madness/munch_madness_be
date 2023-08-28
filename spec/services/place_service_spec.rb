require "rails_helper"

RSpec.describe PlaceService do
  describe "Place Service request response path" do
    it "finds place", :vcr do
      params = "crown burger"
      place_serv = PlaceService.new.find_place(params)[:candidates].first
      expect(place_serv).to be_a(Hash)
      expect(place_serv).to have_key(:name)
      expect(place_serv).to have_key(:photos)
      expect(place_serv[:photos]).to be_an(Array)
      expect(place_serv[:photos].first).to be_a(Hash)
      expect(place_serv[:photos].first).to have_key(:photo_reference)
      expect(place_serv[:photos].first[:photo_reference]).to be_a(String)
    end

    it "finds photo", :vcr do

      params = "crown burger"
      place_serv = PlaceService.new.find_place(params)[:candidates].first
      photo_ref = place_serv[:photos].first[:photo_reference]
      photo_serv = PlaceService.new.find_photo(photo_ref)

      expect(photo_serv.env[:response_headers][:location]).to be_a(String)
    end

    it "returns random restaurants", :vcr do
      location = Location.new(data = {
        :results=> [
          :geometry=> {
            :location=> {
              :lat=>"39.7752563",
              :lng=>"-105.0498966",
        }}]
      })

      restaurants = PlaceService.new.random_restaurants(location)
      require 'pry'; binding.pry
      #using pry, restaurants = {:html_attributions=>[], :results=>[], :status=>"ZERO_RESULTS"}
    end
  end
end
  