class PlaceFacade
  def initialize(query)
    @query = query
  end

  def place_service
    @place_service ||= PlaceService.new
  end

  def find_place
    place = place_service.find_place(@query)
    if place[:candidates].nil? || place[:candidates].empty?
      return []  # Return an empty array if there are no candidates.
    end
  
    # Now, you can safely access the data.
    place_ref = place[:candidates].first&.dig(:photos, 0, :photo_reference)
    if place_ref.nil?
      return []  # Handle nil photo reference.
    end
  
    # Continue with the rest of your logic.
    photo = place_service.find_photo(place_ref)
    place_details = place_service.get_place_details(place[:candidates][0][:place_id])
    place_item = Place.new(
      place[:candidates].first[:name],
      photo.env[:response_headers][:location],
      place[:candidates].first[:price_level],
      place[:candidates].first[:rating],
      place_details[:result][:website],
      place_details[:result][:vicinity]
    )
    # place = place_service.find_place(@query)
    # if place[:candidates].empty?
    #   []
    # else
    #   place_ref = place[:candidates].first[:photos].first[:photo_reference]
    #   photo = place_service.find_photo(place_ref)
    #   place_details = place_service.get_place_details(place[:candidates][0][:place_id])
    #   place_item = Place.new(place[:candidates].first[:name], photo.env[:response_headers][:location], place[:candidates].first[:price_level], place[:candidates].first[:rating], place_details[:result][:website], place_details[:result][:vicinity])
    # end
  end

  def find_random_restaurants
    service = place_service.random_restaurants(@query)
    if service[:results].nil? || service[:results].empty?
      return []  # Return an empty array if there are no results.
    end
  
    # Now, iterate through the results and handle potential nil values.
    places = service[:results].map do |place|
      place_details = place_service.get_place_details(place[:place_id])
      place_ref = place.dig(:photos, 0, :photo_reference)
      if place_ref.nil?
        next  # Skip this place if the photo reference is nil.
      end
  
      photo = place_service.find_photo(place_ref)
      place_item = Place.new(
        place[:name],
        photo.env[:response_headers][:location],
        place[:price_level],
        place[:rating],
        place_details[:result][:website],
        place_details[:result][:vicinity]
      )
    end.uniq { |place| place.name }
  
    # Finally, return the filtered places.
    places
  end
end
#     service = place_service.random_restaurants(@query)
#     if service[:results].count < 1
#       []
#     else
#       places = service[:results].map do |place|
#         place_details = place_service.get_place_details(place[:place_id])
#         place_ref = place[:photos][0][:photo_reference]
#         photo = place_service.find_photo(place_ref)
#         place_item = Place.new(place[:name], photo.env[:response_headers][:location], place[:price_level], place[:rating], place_details[:result][:website], place_details[:result][:vicinity])
#       end.uniq { |place| place.name }
#     end
#   end
# end
