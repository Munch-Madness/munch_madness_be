class PlaceSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :photo, :price, :rating
end
