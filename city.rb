require './weather_api'

class City

  def temperature
    coordinates = get_coordinates(@my_city_name)
    current_temp = get_current_temperature(coordinates.first, coordinates.last)
    return current_temp.to_i
  end

  def name=(the_name)
    @my_city_name = the_name
  end

  def name
    return @my_city_name
  end

  def photo_url=(url)
    @my_photo_url = url
  end

  def photo_url
    return @my_photo_url
  end
end
