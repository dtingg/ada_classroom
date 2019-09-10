require "httparty"
require 'dotenv'

Dotenv.load

def get_response(movie_name)
  url = "https://api.themoviedb.org/3/search/movie"
  
  query = { query: movie_name, api_key: ENV["API_KEY"] }
  
  response = HTTParty.get(url, query: query)
  
  response["results"].each do |movie|
    puts movie["title"]
    puts movie["overview"]
    puts
  end
end

print "Enter a movie name: "
movie = gets.chomp

response = get_response(movie)
