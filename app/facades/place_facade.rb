class PlaceFacade
  def initialize(query)
    @query = query
  end

  def place_service
    @place_service ||= PlaceService.new
  end

  def find_place
    place = @place_service.find_place(@query)
    if place[:candidates].empty?
      []
    elsif
      place[:candidates].first[:photos].nil?
      []
    else
      place_ref = place[:candidates].first[:photos].first[:photo_reference]
      photo = @place_service.find_photo(place_ref)
      place_item = Place.new(place[:candidates].first[:name], photo.env[:response_headers][:location], place[:candidates].first[:price_level], place[:candidates].first[:rating])
    end
  end

  def find_random_restaurants
    require 'pry'; binding.pry
    service = @place_service.random_restaurants(@query)
    places = service[:results].map do |place|
      place_ref = place[:photos][0][:photo_reference]
      photo = @place_service.find_photo(place_ref)
      # require 'pry'; binding.pry
      place_item = Place.new(place[:name], photo.env[:response_headers][:location], place[:price_level], place[:rating])
      check_database(place_item)
    end
    # .uniq { |place| place.name }  # we can add this if we don't want duplicate names to pop of for a zipcode, it was making count off though, there are 3 subways for zipcode 80020
  end

  private
  
  def check_database(place)
    existing = Restaurant.find_by(name: place.name)
# require 'pry'; binding.pry
    if existing
      existing.update(price: place.price, rating: place.rating)
    else
      new_restaurant(place)
    end
  end

  def new_restaurant(place)
    restaurant = Restaurant.create!(
      name: place.name,
      photo: place.photo,
      price: place.price,
      rating: place.rating
    )
  end
end
