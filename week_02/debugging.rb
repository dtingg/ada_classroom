require 'pry'

def useful_method
  first_variable = "Something useful"
  puts first_variable
  
  binding.pry
  
  another_variable = "Where am I!?"
  puts another_variable
  first_variable = "Time for change"
end

# call them method!
useful_method

def add_5_years(age)
  5.times do
    age + 1
    binding.pry
  end
  binding.pry
  return age
end

binding.pry
puts add_5_years(50)
