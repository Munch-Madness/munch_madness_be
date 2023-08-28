class Place
  attr_reader :name, 
              :photo,
              :id,
              :type
  def initialize(place, photo)
    @id = "null"
    @type = "place"
    @name = place
    @photo = photo
  end
end