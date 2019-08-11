# Ada - Week 01
# Methods

# Simple method
def say_hello
  puts "hello world"
end

# Method inside a while loop
i = 0

while i < 5
  say_hello
  i += 1
end

# Method that takes a parameter
def say_hello(name)
  puts "Hello #{name}"
end

# Invoking the method
say_hello("Becca")

# Method that takes two parameters
def add (first, second)
  first + second
end

# Method that takes many parameters
def add (first, second, third, fourth, fifth)
  if (fourth > 2)
    return second + third
  end
  first + fifth
end

# Method that returns two variables in an array
def add (first, second, third, fourth, fifth)
  ele_one = first + fifth
  ele_two = second + third

  return [ele_one, ele_two]
end

result = add(12, 3, 4, 1, 6)

puts "#{result[0] - 1} #{result[1]}"

# Method with a while loop
def while_examp
  value = 0

  while value < 6
    value += 1
    result = value * value
  end
return result
end

puts "#{while_examp}"
