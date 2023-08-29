class LocationFacade
  def get_coords(query)
    service = LocationService.new
    request = service.location_search(query)
    Location.new(request)
  end
end
