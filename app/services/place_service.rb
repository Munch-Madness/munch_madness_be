class PlaceService


  def conn
    Faraday.new(url: '')
  end

  def get_url(url)

  end

end