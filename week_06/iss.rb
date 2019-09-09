require "httparty"
require "time"

base_url = 'http://api.open-notify.org/iss-pass.json'

query_parameters = { 
lat: 47.6062, 
lon: 122.3321 
}

response = HTTParty.get(base_url, query: query_parameters)

puts "ISS Pass Times for Seattle"

if response.code == 200
  response["response"].each do |item|
    risetime = item["risetime"].to_s
    formatted_risetime = Time.strptime(risetime, "%s")
    
    duration = item["duration"]
    formatted_duration = Time.at(duration).utc.strftime("%M minutes, %S seconds")
    
    puts "Time: #{formatted_risetime}"
    puts "Duration: #{formatted_duration}"
    puts "\n"
  end
  
else
  puts "Failed with code: #{response.code}. The reason is: #{response["reason"]}."
end
