# require_relative "product"
require_relative "product_helper"


# cookie = Product.new
# cookie.name = "Chocolate Chip Cookie"
# cookie.quantity_in_stock = 10

# puts cookie.name
# puts cookie.quantity_in_stock
# puts cookie.available?

# cake = Product.new
# cake.name = "Lemon Cake"
# cake.quantity_in_stock = 0

# puts cake.name
# puts cake.quantity_in_stock
# puts cake.available?

pie = Product.new("Apple Pie", 15)
puts "Current quantity in stock: #{pie.quantity_in_stock}"

puts "I'm selling 5 pies!"
pie.sell(5)

puts "Current quantity in stock: #{pie.quantity_in_stock}"
puts "Number of pies sold: #{pie.quantity_sold}"
