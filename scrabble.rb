require 'open-uri'
require 'json'

word = "hello"
url = URI.encode("http://jeffcohenonline.com/scrabble/#{word}.json")
string_data = open(url).read
json_data = JSON.parse(string_data)

puts json_data["score"]

# 1. Can you display the scrabble score?
# 2. Can you receive the word as a command-line argument instead of hardcoding it?
#    (hint: play around with the built-in ARGV variable).
#    i.e:   ruby scrabble.rb goodbye








