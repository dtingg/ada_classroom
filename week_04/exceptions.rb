# quotient = 5 / 0 # ZeroDivisionError
# puts quotient # this code will never run


# Argument Error
# def make_toast(slices)
#   if slices < 1
#     raise ArgumentError.new("Can't make less than 1 slice of toast (asked for #{slices})")
#   end
# end

# begin
#   make_toast(0)
# rescue ArgumentError => exception
#   puts "#{exception}"
# end


# Begin/rescue block
# def divide(a, b)
#   return a / b
# end

# begin 
#   quotient = divide(5, 0)
#   puts "made it past the error"
# rescue ZeroDivisionError
#   quotient = nil
#   puts "Can't divide by zero. Set quotient to nil."
# rescue ArgumentError => exception
#   quotient = nil
#   puts "Encountered error: #{exception}"
# end
