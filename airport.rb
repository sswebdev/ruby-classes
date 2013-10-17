require './airports_api'
require './weather_api'

class Airport

  # Let someone assign a code to this airport (ORD, JFK, etc.)
  def code=(airport_code)
    @my_airport_code = airport_code
  end

  # Return our airport code when asked
  def code
    return @my_airport_code
  end

  # Return the maximum delay at this airport.
  def delay
    return get_airport_delay(@my_airport_code)
  end

  # Return the current temperature at the airport.
  def temperature
    coordinates = get_coordinates(@my_airport_code)
    current_temp = get_current_temperature(coordinates.first, coordinates.last)
    return current_temp.to_i
  end

end
