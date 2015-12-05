require_relative '../models/location'

10.times do |x|
  Location.create(
                  yelp_id: x.to_s,
                  name: 'Shoreditch House',
                  url: 'www.abc.com',
                  rating: '3',
                  image_url: 'http://s3-media2.fl.yelpcdn.com/bphoto/wR8f6vmnBs21oZ_8umK6Qg/ms.jpg',
                  display_address: 'Herderstrasse 29, Hamburg, Germany')
end
