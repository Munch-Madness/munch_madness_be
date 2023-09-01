class PlaceSerializer
  include JSONAPI::Serializer
  attributes :name, :photo, :price, :rating, :website, :address
end