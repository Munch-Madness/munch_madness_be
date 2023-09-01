require 'rails_helper'

RSpec.describe Place do
  describe 'Place object' do
    it 'exists and has attributes' do
      name = { name: "Crown Burger" }
      photo = { photo: "photo_url@photo_url.photo_url" }
      price = { price: 2 }
      rating = { rating: 4.6 }
      website = { website: "www.google.com" }
      address = { address: "123 Sesame Street" }

      place = Place.new(name, photo, price, rating, website, address)
      
      expect(place).to be_a Place
      expect(place.id).to eq "null"
      expect(place.type).to eq "restaurant"
      expect(place.name).to eq name
      expect(place.photo).to eq photo
      expect(place.price).to eq price
      expect(place.rating).to eq rating
      expect(place.website).to eq website
      expect(place.address).to eq address

    end
  end
end