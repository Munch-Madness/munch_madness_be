# class PhotoService
#   def conn
#     Faraday.new(url: 'https://maps.googleapis.com') do |f|
#       f.params["key"] = ENV["rest_key"]
#     end
#   end

#   def get_url(url)
#     response = conn.get(url)
#     JSON.parse(response.body, symbolize_names: true)
#   end

#   def find_photo(info)
#     key = ENV["rest_key"]
#     get_url("/maps/api/place/photo?maxwidth=400&photo_reference=#{info}&key=#{key}")
#   end


# end