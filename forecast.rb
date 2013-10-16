require './weather_api'

# CHALLENGE: Get coordinates for any city we want
coordinates = get_coordinates("Miama, FL")

latitude = coordinates.first
longitude = coordinates.last

puts "Latitude: #{latitude}"
puts "Longitude: #{longitude}"

current_temp = get_current_temperature(latitude, longitude)
puts "It is #{current_temp} degrees."
