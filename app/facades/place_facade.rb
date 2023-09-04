class PlaceFacade
  def initialize(query)
    @query = query
  end

  def place_service
    @place_service ||= PlaceService.new
  end

  def find_place
    place = place_service.find_place(@query)
    if place[:candidates].empty?
      []
    else
      place_ref = place[:candidates].first[:photos].first[:photo_reference]
      photo = place_service.find_photo(place_ref)
      place_details = place_service.get_place_details(place[:candidates][0][:place_id])
      place_item = Place.new(place[:candidates].first[:name], photo.env[:response_headers][:location], place[:candidates].first[:price_level], place[:candidates].first[:rating], place_details[:result][:website], place_details[:result][:vicinity])
    end
  end

  def find_random_restaurants
    service = place_service.random_restaurants(@query)
    if service[:results].count < 1
      []
    else
      places = service[:results].map do |place|
        place_details = place_service.get_place_details(place[:place_id])
        place_ref = place[:photos][0][:photo_reference]
        photo = place_service.find_photo(place_ref)
        place_item = Place.new(place[:name], photo.env[:response_headers][:location], place[:price_level], place[:rating], place_details[:result][:website], place_details[:result][:vicinity])
      end
    end
  end
end
