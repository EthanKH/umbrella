pp "Hello, World!"

pp "What's your location?"
# user_location = gets.chomp
user_location = "Chicago"

pp user_location

maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + user_location + "&key=" + ENV.fetch("GMAPS_KEY")

require "http"

resp = HTTP.get(maps_url)
raw_response = resp.to_s

require "json"

parsed_response = JSON.parse(raw_response)

pp parsed_response.keys

# # I've already created a string variable above: pirate_weather_api_key
# # It contains sensitive credentials that hackers would love to steal so it is hidden for security reasons.

# require "http"

# pirate_weather_api_key = ENV.fetch("PIRATE_WEATHER_KEY")

# # Assemble the full URL string by adding the first part, the API token, and the last part together
# pirate_weather_url = "https://api.pirateweather.net/forecast/" + pirate_weather_api_key + "/41.8887,-87.6355"

# # Place a GET request to the URL
# raw_response = HTTP.get(pirate_weather_url)

# require "json"

# parsed_response = JSON.parse(raw_response)

# currently_hash = parsed_response.fetch("currently")

# current_temp = currently_hash.fetch("temperature")

# puts "The current temperature is " + current_temp.to_s + "."
