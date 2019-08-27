require_relative "property"

class Condo < Property
  attr_reader :unit, :price, :square_feet
  
  def initialize(id, street, unit, city, state, zip, price, square_feet)
    super(id, street, city, state, zip)
    @unit = unit
    @price = price
    @square_feet = square_feet
  end
  
  def mailing_address
    return "Unit: #{unit}\n#{super}"
  end
  
  def price_per_square_foot    
    return price / square_feet.to_f
  end
  
end

dianna_condo = Condo.new(1, "123 Street", "Penthouse", "Seattle", "WA", 98136, 1_000_000, 5100)

puts "Mailing address:"
puts dianna_condo.mailing_address
puts "Price per square foot: $#{"%.2f" % dianna_condo.price_per_square_foot}"
