class PlaceFacade
  def place_service
    PlaceService.new
  end

  def photo_service
    PhotoService.new
  end

  def find_place(info)
    place = place_service.find_place(info)
    place_ref = place[:photos].first[:photo_reference]
    photo = photo_service.find_photo(place_ref)
    photo_item = Photo.new(photo)
    place_item = Place.new(place[:name], photo_item)
    # place_item = Place.new(place, photo)
    # photo_item = photo[:photo_reference]
  end
end