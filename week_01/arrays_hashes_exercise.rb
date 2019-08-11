# Ada - Week 01
# Arrays and Hashes Together: Nesting

menu = [
  {
    name: 'beet salad',
    price: 6.75,
    allergens: ['nuts']
  },
  {
    name: 'quiche',
    price: 10.00,
    allergens: ['gluten', 'dairy']
  },
  {
    name: 'molten chocolate cake',
    price: 8.50,
    allergens: []
  }
]

# Add two more meals to our menu, including name, price and allergy information
menu.push(
  {
    name: "steak",
    price: 20.99,
    allergens: []
  },
  {
    name: "cheeseburger",
    price: 15.99,
    allergens: ["dairy", "gluten"]
  })

# Write a loop to find the average price of a meal on our menu
prices = []

menu.each do |item|
  prices.push(item[:price])
end

average = prices.sum / prices.size.to_f

puts "Average price of a meal is $#{"%.2f" % average}"

# Produce a list of all the allergens in the menu
all_allergens = []

menu.each do |item|
  item[:allergens].each do |allergen|
    all_allergens.push(allergen)
  end
end

# Get rid of duplicates
all_allergens.uniq!

puts "All of our allergens are: #{all_allergens}."

# Write code that asks the user for the name of a meal and prints out the price
print "Which meal are you interested in? "
meal = gets.chomp

price = ""

menu.each do |item|
  if item[:name] == meal
    price = item[:price]
    break
  end
end

# Print an error message if the meal isn't found
if price == ""
  puts "Sorry. We don't have that item on our menu."
else
  puts "The price of a #{meal} is $#{price}."  
end
