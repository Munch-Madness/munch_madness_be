class Location
  attr_reader :latitude, 
              :longitude

  def initialize(data)    
    @latitude = data[:results][0][:geometry][:location][:lat]
    @longitude = data[:results][0][:geometry][:location][:lng]
  end
end
