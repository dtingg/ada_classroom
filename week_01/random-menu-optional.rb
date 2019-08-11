# Ada - Week 01
# Random Menu Generator

# Welcome user to the program
puts "Welcome to Dianna's Random Menu Generator"

# Create a random restaurant menu of food dishes
# Pull one item each from different arrays to create a combined menu item

# Adjectives
adjectives = ["spicy", "hot", "cold", "soft", "creamy", "hard", "shredded", "lightly", "buttery", "pan"]

# Cooking styles
cooking_styles = ["sautéed", "stir-fried", "seared", "braised", "stewed", "steamed", "baked", "roasted", "broiled", "grilled"]

# Foods
foods = ["dumplings", "clams", "broccoli", "ham", "potatoes", "shrimp", "asparagus", "fish", "steak", "pork"]

# Create and show a list of ten numbered menu items
# I will use shuffle and pop to make sure that no words are repeated
adjectives.shuffle!
cooking_styles.shuffle!
foods.shuffle!

# Ask the user for how many items they would like to see
print "How many menu items would you like to see? "
menu_items = gets.chomp.to_i

until menu_items > 0 && menu_items < 11
  puts "Please select a number from 1 - 10: "
  menu_items = gets.chomp.to_i
end

# Print each item on a new line
menu_items.times do |i|
  puts "#{i + 1}. #{adjectives.pop} #{cooking_styles.pop} #{foods.pop}"
end

# Version that accepts user input
user_adjectives = []
user_cooking_styles = []
user_foods = []

loop do
  print "Please enter an adjective or type q to quit: "
  adjective = gets.chomp
  
  if adjective == "q" || adjective == "Q"
    break
  else
    user_adjectives.push(adjective)    
  end
end

loop do
  print "Please enter a cooking style or type q to quit: "
  cooking_style = gets.chomp
  
  if cooking_style == "q" || cooking_style == "Q"
    break
  else
    user_cooking_styles.push(cooking_style)
  end
end

loop do
  print "Please enter a food or type q to quit: "
  food = gets.chomp
  
  if food == "q" || food == "Q"
    break
  else
    user_foods.push(food)
  end
end

print "How many menu items do you want to see? "
user_menu_items = gets.chomp.to_i

user_menu_items.times do |i|
  puts "#{i + 1}. #{user_adjectives.sample} #{user_cooking_styles.sample} #{user_foods.sample}"
end
