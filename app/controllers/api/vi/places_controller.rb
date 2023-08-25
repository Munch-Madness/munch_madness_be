class api::v1::PlacesController < ApplicationController
  def index
    place = PlaceFacade.new(argument)
    # attach photo to place api
    # render json for new PlaceSerializer
  end
end