class  Api::V1::PlacesController < ApplicationController
  def index
    fetch_place = PlaceFacade.new(params[:query])
    fetch_place_photo = fetch_place.find_place
    if fetch_place_photo != []
      render json: PlaceSerializer.new(fetch_place_photo)
    else
      render json: "no restaurants located with search query", status: 404
    end
  end
end