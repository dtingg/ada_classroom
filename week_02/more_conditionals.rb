# Ada - Week 02

# Normal way
num = rand(11)
if num == 10
  puts "It's 10"
else
  puts "It's not 10!"
end

# Using ternary
# comparison ? positive result : negative result
puts num == 10 ? "It's 10!" : "It's not 10!"

# def avg_score(scores)
#   if scores.length > 0
#     scores.sum / scores.length
#   else
#     0
#   end  
# end

def avg_score(scores)
  scores.length > 0 ? scores.sum / scores.length : 0
end

p avg_score([6, 10])

# Post fix conditional
# argument = nil

# raise ArgumentError if arugment.nil?

# "guard clause"
def do_something(num)  
  unless num > 0
    return ""
  end
end

p do_something(5)

p do_something(-1)
