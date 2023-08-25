require "rails_helper"

RSpec.describe PlaceFacade do
  describe "Place Facade" do
    it "searches for a place", :vcr do
      params = "crown burger"
      place = PlaceFacade.new.find_place(params)
      require 'pry'; binding.pry
    end
  end
end