class Place
  attr_reader :name, 
              :photo,
              :id,
              :type, 
              :price,
              :rating

  def initialize(place, photo, price, rating)
    # require 'pry'; binding.pry
    @id = "null"
    @type = "restaurant"
    @name = place
    @photo = photo
    @price = price
    @rating = rating
  end
end