class  Api::V1::PlacesController < ApplicationController
  def index
    if params[:search] == "random"
      location = LocationFacade.new.get_coords(params[:query])
      fetch_place_photo = PlaceFacade.new(location).find_random_restaurants
    else
      fetch_place_photo = PlaceFacade.new(params[:query]).find_place
    end
    render json: PlaceSerializer.new(fetch_place_photo)
  end
end