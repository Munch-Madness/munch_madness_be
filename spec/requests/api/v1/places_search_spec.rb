require "rails_helper"

RSpec.describe "Get Place Endpoint" do
  describe "Place Service request response path" do
    it "finds place based on user query input", :vcr do
      query = "crown burger"
      get "/api/v1/places", params: { query: query }

      place_data = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      expect(place_data).to be_a(Hash)
      expect(place_data).to have_key(:data)

      expect(place_data[:data]).to be_a(Hash)
      
      expect(place_data[:data]).to have_key(:id)
      expect(place_data[:data][:id]).to be_a(String)

      expect(place_data[:data]).to have_key(:type)
      expect(place_data[:data][:type]).to be_a(String)
      
      expect(place_data[:data]).to have_key(:attributes)
      expect(place_data[:data][:attributes]).to be_a(Hash)
      
      expect(place_data[:data][:attributes]).to have_key(:name)
      expect(place_data[:data][:attributes][:name]).to be_a(String)
      
      expect(place_data[:data][:attributes]).to have_key(:photo)
      expect(place_data[:data][:attributes][:photo]).to be_a(String)
    end

    it "returns a list of random restaurants", :vcr do
      query = "20817"
      get "/api/v1/places", params: { query: query }

      place_data = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      expect(place_data).to be_a(Hash)
      expect(place_data).to have_key(:data)

      expect(place_data[:data]).to be_a(Hash)
      
      expect(place_data[:data]).to have_key(:id)
      expect(place_data[:data][:id]).to be_a(String)

      expect(place_data[:data]).to have_key(:type)
      expect(place_data[:data][:type]).to be_a(String)
      
      expect(place_data[:data]).to have_key(:attributes)
      expect(place_data[:data][:attributes]).to be_a(Hash)
      
      expect(place_data[:data][:attributes]).to have_key(:name)
      expect(place_data[:data][:attributes][:name]).to be_a(String)
      
      expect(place_data[:data][:attributes]).to have_key(:photo)
      expect(place_data[:data][:attributes][:photo]).to be_a(String)
    end
  end
end