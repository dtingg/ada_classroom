# require_relative "celsius"

# nice_temp = Celsius.new

# nice_temp = Celsius.new(22)

require_relative "celsius"

degrees = 22
nice_temp = Celsius.new( degrees )
puts "Right now the temperature is #{degrees}°C, or #{ nice_temp.to_fahrenheit}°F"