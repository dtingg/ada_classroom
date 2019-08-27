require_relative "property"

class Apartment < Property
  attr_reader :unit
  
  def initialize(id, street, unit, city, state, zip)
    super(id, street, city, state, zip)
    @unit = unit
  end
  
  def mailing_address
    return "Unit: #{unit}\n#{super}"
    
  end
  
end

new_apartment = Apartment.new(1, "Happy St", "101", "Seattle", "WA", 98112)

puts "Property address:"
generic_property = Property.new(12345, '123 St Charles Place', 'New York', 'NY', 12080)
puts generic_property.mailing_address 

puts "\nApartment address:"
fun_place = Apartment.new(56789, '111 Boardwalk', '5A', 'New York', 'NY', 12070)
puts fun_place.mailing_address 
