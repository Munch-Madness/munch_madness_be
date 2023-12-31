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
      expect(place_serv).to have_key(:price_level)
      expect(place_serv).to have_key(:rating)
      expect(place_serv).to have_key(:place_id)
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

      expect(restaurants).to be_a(Hash)
      expect(restaurants).to have_key(:results)
      expect(restaurants[:results]).to be_an(Array)
      expect(restaurants[:results].count).to eq(20)
      expect(restaurants[:results][0]).to have_key(:name)
      expect(restaurants[:results][0]).to be_a(Hash)
      expect(restaurants[:results][0]).to have_key(:photos)
      expect(restaurants[:results][0][:photos]).to be_an(Array)
      expect(restaurants[:results][0][:photos][0]).to have_key(:photo_reference)
      expect(restaurants[:results][0][:photos][0][:photo_reference]).to be_a(String)
      expect(restaurants[:results][0]).to have_key(:rating)
      expect(restaurants[:results][0]).to have_key(:price_level)
      expect(restaurants[:results][0]).to have_key(:vicinity)
    end

    it "finds place details", :vcr do
      place_id = "ChIJe-rLtxV-bIcRb6mSFNp9wXA"
      place_serv = PlaceService.new.get_place_details(place_id)

      expect(place_serv).to be_a(Hash)
      expect(place_serv).to have_key(:result)
      expect(place_serv[:result]).to be_a(Hash)
      expect(place_serv[:result]).to have_key(:name)
      expect(place_serv[:result]).to have_key(:photos)
      expect(place_serv[:result]).to have_key(:vicinity)
      expect(place_serv[:result]).to have_key(:website)
      expect(place_serv[:result]).to have_key(:price_level)
      expect(place_serv[:result]).to have_key(:rating)
    end
  end
end
  