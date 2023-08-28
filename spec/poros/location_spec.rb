require "rails_helper"

RSpec.describe Location do 
  it "exists and has attributes" do 
    data = {
      :results=> [
        :geometry=> {
          :location=> {
            :lat=>"43.653226",
      # }}],
      # :results=> [
      #   :geometry=> {
      #     :location=> {
            :lng=>"79.3831843",
      }}]
    }
    
    location = Location.new(data)

    expect(location).to be_a(Location)
    expect(location.latitude).to eq("43.653226")
    expect(location.longitude).to eq("79.3831843")
  end
end
