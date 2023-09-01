require "rails_helper"

RSpec.describe "Get Place Endpoint" do
  describe "Place Service request response path" do
    it "finds place based on user query input", :vcr do
      query = "crown burger"
      get "/api/v1/places/search", params: { query: query }
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

      expect(place_data[:data][:attributes]).to have_key(:price)
      expect(place_data[:data][:attributes][:price]).to be_a(Integer)

      expect(place_data[:data][:attributes]).to have_key(:rating)
      # expect(place_data[:data][:attributes][:rating].to_f).to be_a(Float)
    end

    it 'returns an error if no place is found', :vcr do
      query = "xxxxxxxxxxxxxx"
      get "/api/v1/places/search", params: { query: query }
      expect(response).to_not be_successful
      expect(response.status).to eq 404
      expect(response.body).to eq "no restaurants located with search query"
    end

    it "returns a list of random restaurants", :vcr do
      query = "80212"
      get "/api/v1/places", params: { query: query }

      place_data = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(response.status).to eq(200)

      expect(place_data).to be_a(Hash)
      expect(place_data).to have_key(:data)

      expect(place_data[:data]).to be_an(Array)
      expect(place_data[:data].count).to eq(20)
      
      expect(place_data[:data][0]).to have_key(:id)
      expect(place_data[:data][0][:id]).to be_a(String)

      expect(place_data[:data][0]).to have_key(:type)
      expect(place_data[:data][0][:type]).to be_a(String)
      
      expect(place_data[:data][0]).to have_key(:attributes)
      expect(place_data[:data][0][:attributes]).to be_a(Hash)
      
      expect(place_data[:data][0][:attributes]).to have_key(:name)
      expect(place_data[:data][0][:attributes][:name]).to be_a(String)
      
      expect(place_data[:data][0][:attributes]).to have_key(:photo)
      expect(place_data[:data][0][:attributes][:photo]).to be_a(String)

      expect(place_data[:data][0][:attributes]).to have_key(:price)
      expect(place_data[:data][0][:attributes][:price]).to be_a(Integer)

      expect(place_data[:data][0][:attributes]).to have_key(:rating)
      expect(place_data[:data][0][:attributes][:rating]).to be_a(Float)
    end

    it 'returns an error if invalid zipcode is given', :vcr do
      query = "xxxxxxxxxxxxxx"
      get "/api/v1/places", params: { query: query }
      expect(response).to_not be_successful
      expect(response.status).to eq 404
      expect(response.body).to eq "location could not be found"
    end

    # it 'returns an error if no restaurants are found', :vcr do
    #   query = "00000"
    #   get "/api/v1/places", params: { query: query }
    #   expect(response).to_not be_successful
    #   expect(response.status).to eq 404
    #   expect(response.body).to eq "no restaurants located with search query"
    # end
    # LG note: unable to find a zipcode that does not have any restaurants
  end
end
