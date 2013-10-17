require 'open-uri'
require 'json'

def get_airport_delay(airport_code)
  url = URI.encode("http://services.faa.gov/airport/status/#{airport_code}?format=application/json")
  string_data = open(url).read
  json_data = JSON.parse(string_data)
  return json_data['status']['maxDelay'].to_i
end
