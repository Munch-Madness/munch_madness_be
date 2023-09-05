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
    key = ENV["rest_key"]
    get_url("/maps/api/place/findplacefromtext/json?input=#{info}&inputtype=textquery&fields=name,photo,price_level,rating,place_id&key=#{key}")    
  end

  def find_photo(photo_ref)
    key = ENV["rest_key"]
    url = "/maps/api/place/photo?maxwidth=400&photo_reference=#{photo_ref}&key=#{key}"
    conn.get(url)
  end

  def random_restaurants(location, page_token = nil)
    key = ENV["rest_key"]
    url = "/maps/api/place/nearbysearch/json?location=#{location.latitude.to_f},#{location.longitude.to_f}&radius=50000&type=restaurant&key=#{key}"
    url += "&pagetoken=#{page_token}" if page_token
  
    get_url(url)
  end
  
  # def random_restaurants(location)
  #   key = ENV["rest_key"]
  #   get_url("/maps/api/place/nearbysearch/json?location=#{location.latitude.to_f},#{location.longitude.to_f}&radius=50000&type=restaurant&key=#{key}")
  # end

  def get_place_details(place_id)
    key = ENV["rest_key"]
    get_url("/maps/api/place/details/json?place_id=#{place_id}&fields=name,photo,price_level,rating,website,vicinity&key=#{key}")
  end
end
