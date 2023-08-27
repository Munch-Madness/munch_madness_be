class PlaceFacade
  def initialize(query)
    @query = query
  end

  def place_service
    PlaceService.new
  end

  def find_place
    place = place_service.find_place(@query)
    place_ref = place[:candidates].first[:photos].first[:photo_reference]
    photo = place_service.find_photo(place_ref)
    place_item = Place.new(place[:candidates].first[:name], photo.env[:response_headers][:location])
  end
end