require "httparty"
require 'dotenv'

Dotenv.load

url = "https://api.themoviedb.org/3/search/movie"

query = {
query: "hidden figures",
api_key: ENV["API_KEY"]
}

response = HTTParty.get(url, query: query)

puts response["results"][0]["title"]
puts response["results"][0]["overview"]
