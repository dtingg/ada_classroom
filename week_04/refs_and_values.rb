# Pets is the same
# def short_strings(input)
#   result = []
#   input.each do |word|
#     # Slice characters 0 to 2
#     result << word[0..2]
#   end
#   input = result
# end

# pets = ['dog', 'parrot', 'cat', 'llama']
# puts "#{pets}"
# short_strings(pets)
# puts "#{pets}"


# Inside short strings, the strings are short, but outside they are unaltered
# def short_strings(input)
#   result = []
#   input.each do |word|
#     # Slice characters 0 to 2
#     result << word[0..2]
#   end
#   input = result
#   puts "Inside short_strings, input is"
#   puts "#{input}"
# end

# pets = ['dog', 'parrot', 'cat', 'llama']
# short_strings(pets)
# puts "After calling short_strings"
# puts "#{pets}"


# Pets gets altered because param gets assigned to a new array
# def reassign_parameter(param)
#   puts "  Inside reassign_parameter"
#   puts "  at start, param.object_id is #{param.object_id}"

#   # .push modifies the underlying object
#   param.push('gecko')
#   puts "  after modification, param.object_id is #{param.object_id}"

#   # = changes the reference
#   param = ["new", "array"]
#   puts "  after reassignment, param.object_id is #{param.object_id}"
#   puts "  with value #{param}"
#   puts "  Finish reassign_parameter"
# end

# pets = ["dog", "parrot", "cat", "llama"]
# puts "Before reassign_parameter"
# puts "pets.object_id is #{pets.object_id}"
# puts "with value #{pets}"
# puts

# reassign_parameter(pets)

# puts
# puts "After reassign_parameter"
# puts "pets.object_id is #{pets.object_id}"
# puts "with value #{pets}"
