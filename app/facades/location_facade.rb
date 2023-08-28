class LocationFacade
  def get_coords(query)
    service = LocationService.new
    request = service.location_search(query)
    l = Location.new(request)
  end
end
