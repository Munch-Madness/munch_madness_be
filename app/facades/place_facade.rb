class PlaceFacade
  def initialize(query)
    @query = query
  end

  def place_service
    PlaceService.new
  end

  def find_place
    place = place_service.find_place(@query)
    require 'pry'; binding.pry
    if place[:candidates].empty?
      []
    elsif
      place[:candidates].first[:photos].nil?
      []
    else
      place_ref = place[:candidates].first[:photos].first[:photo_reference]
      photo = place_service.find_photo(place_ref)
      place_item = Place.new(place[:candidates].first[:name], photo.env[:response_headers][:location], place[:price_level], place[:rating])
    end
  end

  def find_random_restaurants
    service = place_service.random_restaurants(@query)
    places = service[:results].map do |place|
      place_ref = place[:photos][0][:photo_reference]
      photo = place_service.find_photo(place_ref)
      place_item = Place.new(place[:name], photo.env[:response_headers][:location], place[:price_level], place[:rating])
    end
    # .uniq { |place| place.name }  # we can add this if we don't want duplicate names to pop of for a zipcode, it was making count off though, there are 3 subways for zipcode 80020
  end
end