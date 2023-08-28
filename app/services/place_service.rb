class PlaceService
  def conn
    Faraday.new(url: 'https://maps.googleapis.com') do |f|
      f.params["key"] = ENV["rest_key"]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def find_place(info)
    get_url("/maps/api/place/findplacefromtext/json?input=#{info}&inputtype=textquery&fields=name,photo&key=#{ENV["rest_key"]}")
  end

  def find_photo(photo_ref)
    key = ENV["rest_key"]
    url = "/maps/api/place/photo?maxwidth=400&photo_reference=#{photo_ref}&key=#{key}"
    conn.get(url)
  end

  def random_restaurants(location)
    key = ENV["rest_key"]
    get_url("/maps/api/place/nearbysearch/json?location=#{location.latitude.to_f},#{location.longitude.to_f}&radius=50000&type=restaurant&key=#{key}")
  end
end
