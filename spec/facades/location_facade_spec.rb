require "rails_helper"

RSpec.describe LocationFacade do 
  it "returns a latitude and longitude for a given location", :vcr do 
    location = LocationFacade.new.get_coords("80212")

    expect(location).to be_a(Location)
    expect(location.longitude).to be_a(Float)
    expect(location.latitude).to be_a(Float)
  end
end
