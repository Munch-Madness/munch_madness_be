class Place
  attr_reader :name, 
              :photo,
              :id,
              :type, 
              :price,
              :rating,
              :website,
              :address

  def initialize(place, photo, price, rating, website, address)
    @id = "null"
    @type = "restaurant"
    @name = place
    @photo = photo
    @price = price
    @rating = rating
    @website = website
    @address = address
  end
end