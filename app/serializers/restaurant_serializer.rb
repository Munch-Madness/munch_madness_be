class RestaurantSerializer
  include JSONAPI::Serializer
  set_id :id
  attributes :name, :photo, :price, :rating
end
