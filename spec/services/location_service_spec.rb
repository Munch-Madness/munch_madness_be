require "rails_helper"

RSpec.describe "location service" do
  it "returns a latitude and longitude", :vcr do
    location = LocationService.new.location_search("20817")
  
    expect(location).to be_a(Hash)
    expect(location).to have_key(:results)
    expect(location[:results]).to be_an(Array)
    expect(location[:results][0]).to have_key(:geometry)
    expect(location[:results][0][:geometry]).to be_a(Hash)
    expect(location[:results][0][:geometry]).to have_key(:location)
    expect(location[:results][0][:geometry][:location]).to be_a(Hash)
    expect(location[:results][0][:geometry][:location]).to have_key(:lat)
    expect(location[:results][0][:geometry][:location]).to have_key(:lng)
  end 
end
