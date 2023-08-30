class LocationFacade
  def get_coords(query)
    service = LocationService.new
    request = service.location_search(query)
    if request[:results].empty?
      Location.new(data = {:results=> [:geometry=> {:location=> {:lat=>"0", :lng=>"0",}}]})
    else
      Location.new(request)
    end
  end
end
