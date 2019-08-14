# def coffee_price(type, size)
# def coffee_price(type, size, extra_shots, cold)
# def coffee_price(type, size, extra_shots = 0, cold = false)
# def coffee_price(type, size, extra_shots:, cold:)
def coffee_price(type, size, extra_shots: 0, cold: false)
  
  # Find the base price for this drink
  case type
  when :drip
    price = 1.5
  when :latte
    price = 3.7
  when :cappuccino
    price = 3.2
  else
    puts "Invalid coffee type: #{type}"
    return
  end
  
  # Modify for size
  case size
  when :tall
    # No change
  when :grande
    price *= 1.3
  when :venti
    price *= 1.6
  else
    puts "Invalid size: #{size}"
    return
  end
  
  # extra shots
  price += extra_shots * 0.5
  
  # cold drink
  price += 1 if cold
  
  return price
end

# puts coffee_price(:latte, :venti, 3, false)

# puts coffee_price(:drip, :tall, 0, true)

# puts coffee_price(:latte, :venti, 3)

# puts coffee_price(:drip, :tall, 0, true)

puts coffee_price(:latte, :venti, extra_shots: 3, cold: false)

puts coffee_price(:latte, :venti, cold: true)
