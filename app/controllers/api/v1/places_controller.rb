class  Api::V1::PlacesController < ApplicationController
  def index
    fetch_place_photo = PlaceFacade.new(params[:query]).find_place
    require 'pry'; binding.pry
    render json: PlaceSerializer.new(fetch_place_photo)
  end
end