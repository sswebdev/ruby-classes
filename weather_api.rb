require 'open-uri'
require 'json'

def get_coordinates(city_name)
  google_maps_url = URI.encode("http://maps.googleapis.com/maps/api/geocode/json?address=#{city_name}&sensor=false")
  string_data = open(google_maps_url).read
  data = JSON.parse(string_data)

  latitude = data['results'].first['geometry']['location']['lat']
  longitude = data['results'].first['geometry']['location']['lng']

  coordinates = [latitude, longitude]

  return coordinates
end

def get_current_temperature(latitude, longitude)
  forecast_url = "https://api.forecast.io/forecast/73caa31d569071a7ef1621e4bc146456/#{latitude},#{longitude}"
  string_data = open(URI.encode(forecast_url)).read
  data = JSON.parse(string_data)

  temp = data['currently']['temperature']

  return temp
end
