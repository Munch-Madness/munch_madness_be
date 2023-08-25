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
end