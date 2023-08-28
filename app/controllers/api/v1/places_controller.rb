class  Api::V1::PlacesController < ApplicationController
  def index
    if params[:search] == "random"
      location = LocationFacade.new.get_coords(params[:query])
      fetch_place_photo = PlaceFacade.new(location).find_random_restaurants
      render json: PlaceSerializer.new(fetch_place_photo)
    end
  end

  def search
    fetch_place = PlaceFacade.new(params[:query])
    fetch_place_photo = fetch_place.find_place
    if fetch_place_photo != []
      render json: PlaceSerializer.new(fetch_place_photo)
    else
      render json: "no restaurants located with search query", status: 404
    end
  end
end