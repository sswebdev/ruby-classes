require './airport'

def start_of_page
  html = '<!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Airport Chart</title>
      <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.css">
      <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

      <link rel="stylesheet" href="css/weather.css">
      <link rel="stylesheet" href="css/airports.css">
    </head>
    <body>
    <div class="container">'

    return html
end

def end_of_page
  final_part = '</div></body></html>'
  return final_part
end


def html_for_airport(airport)
  current_delay = airport.delay

  html = '<div class="col-md-3 chart well">'
  html << "<h2>#{airport.code}</h2>"

  html << '<p class="text-muted temperature">' + airport.temperature.to_s + '&deg; F</p>'

  if current_delay < 15
    airport_class = 'on-time'
  elsif current_delay < 30
    airport_class = 'delayed'
  else
    airport_class = 'nightmare'
  end

  html << '<i class="airport icon-plane ' + airport_class + '"></i>'
  html << "</div>"
  return html
end



puts start_of_page

['ORD', 'LAX', 'BOS', 'MDW', 'PDX', 'AUS'].each do |airport_code|
  airport = Airport.new
  airport.code = airport_code
  puts html_for_airport(airport)
end

puts end_of_page
