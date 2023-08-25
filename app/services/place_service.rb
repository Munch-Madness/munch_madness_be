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
end