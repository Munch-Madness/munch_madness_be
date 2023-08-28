class PlaceSerializer
  include JSONAPI::Serializer
  attributes :name, :photo
end