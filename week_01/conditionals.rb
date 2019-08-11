# Ada - Week 01
# Conditionals

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

# without compound conditions
if first_name.length > 8
  if last_name.length > 10
    puts "Your name is considerable!"
  end
end

# This is the same as the above, with compound conditions
if first_name.length > 8 && last_name.length > 10
  puts "Your name is considerable!"
end

# Get command from user
puts "What command would you like: "
command = gets.chomp

# Original code
if command == "add" || command == "+"
  puts "We're adding numbers"
else
  if command == "subtract" || command == "-"
    puts "We're subtracting numbers"
  else
    if command == "multiply" || command == "*"
      puts "We're multiplying numbers"
    end
  end
end

# Refactored using elsif
if command == "add" || command == "+"
  puts "We're adding numbers"
elsif command == "subtract" || command == "-"
  puts "We're subtracting numbers"
elsif command == "multiply" || command == "*"
  puts "We're multiplying numbers"
end

# Using case
case command
  when "add", "+"
    puts "We're adding numbers"
  when "subtract", "-"
    puts "We're subtracting numbers"
  when "multiply", "*"
    puts "We're multiplying numbers"
  when "divide", "/"
    puts "We're dividing numbers"
  when "exponify", "**"
    puts "We're exponentiating numbers"
  when "sqrt"
    puts "We're finding the square root of a number"
  else
    puts "What do you want from me?!"
end

# While loop to print numbers 1 through 4
i = 1

while i <= 4
  puts i
  i += 1
end
