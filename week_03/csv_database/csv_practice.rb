require 'csv'
require 'awesome_print'

# CSV.open("planet_data.csv", 'a') do |csv|
#   csv << [5, "Jupiter", 318, 5.2]
# end

CSV.open("planet_data.csv", 'r').each do |line|
  p line
end

CSV.read('planet_data.csv', headers: true).each do |planet|
  p planet
end

csv_with_headers = CSV.read('planet_data.csv', headers: true).map(&:to_h) 
p csv_with_headers

p CSV.read('planet_data.csv', headers: true)[3]
