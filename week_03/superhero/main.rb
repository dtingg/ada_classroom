# require_relative "superhero"

# ms_marvel = Superhero.new("Ms. Marvel")
# puts "I have a new instance of Superhero, kept in a variable named ms_marvel, and its value is #{ms_marvel}"
# puts "Even on the next line of code, that hasn't changed! This instance of Superhero is still the same, because we have the same memory address: #{ms_marvel}"


# require_relative "superhero"

# ms_marvel = Superhero.new("Ms. Marvel")
# puts "I have a new instance of Superhero, kept in a variable named ms_marvel, and its value is #{ms_marvel}"
# puts "Even on the next line of code, that hasn't changed! This instance of Superhero is still the same, because we have the same memory address: #{ms_marvel}"


# require_relative "superhero"

# ms_marvel = Superhero.new("Ms. Marvel")
# ms_marvels_catchphrase = ms_marvel.say_cool_speech
# puts ms_marvels_catchphrase


require_relative "superhero"

ms_marvel = Superhero.new("Ms. Marvel")
batman = Superhero.new("Batman")
sailor_moon = Superhero.new("Sailor Moon")

ms_marvels_catchphrase = ms_marvel.say_cool_speech
batmans_catchphrase = batman.say_cool_speech
sailor_moons_catchphrase = sailor_moon.say_cool_speech

puts ms_marvels_catchphrase
puts batmans_catchphrase
puts sailor_moons_catchphrase


# With the two files in this state, ask yourself the following questions:
# ms_marvel is an instance of what class? - Superhero
# batman is an instance of what class? - Superhero
# What line of code instantiates an instance of Superhero with the name Ms. Marvel? - ms_marvel = Superhero.new("Ms. Marvel")
# What line of code instantiates an instance of Superhero with the name Sailor Moon? - salior_moon = Superhero.new("Sailor Moon")
# In the class definition of Superhero, what line of code assigns the instance variable @superhero_name? - @superhero_name = superhero_name
# In the class definition of Superhero, what line of code reads the instance variable @superhero_name? - return "My name is #{superhero_name}, and I'm here to defeat evil!"
# All instances of Superhero can perform the behavior named say_cool_speech. How does that get defined? - def say_cool_speech
# All instances of Superhero can perform the behavior named say_cool_speech. How does that get called/invoked? - <object>.say_cool_speech
