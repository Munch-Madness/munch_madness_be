require 'rails_helper'

RSpec.describe Place do
  describe 'Place object' do
    it 'exists and has attributes' do
      name = { name: "Crown Burger" }
      photo = { photo: "photo_url@photo_url.photo_url" }
      place = Place.new(name, photo)
      
      expect(place).to be_a Place
      expect(place.id).to eq "null"
      expect(place.type).to eq "place"
      expect(place.name).to eq name
      expect(place.photo).to eq photo
    end
  end
end