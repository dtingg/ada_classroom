pattern = /ada/

# Checks string to see if it contains pattern (true/false)
puts pattern.match("ada lovelace") ? "The string has ada in it" : "It doesn't match."

# Prints index where pattern starts
puts pattern =~ "ada"
puts pattern =~ "becca"
puts pattern =~ "learn at ada"

# Ignores case
pattern = /ada/i

# Puts the part that matches the pattern
puts pattern.match("ADA LOVELACE")

# Another way to find both cases
pattern = /[Aa][Dd][Aa]/

puts pattern.match("aDa")

# All letters a-z and A-Z
pattern = /[a-zA-Z]/

# First letter that matches regex pattern
puts pattern.match("Apple") # A
puts pattern.match("1Banana") # B
puts pattern.match("123") # nil

# E-mail address patterns
pattern = /.+@.+\..+/
pattern = /[a-z]+@[a-z]+\.[a-z]+/i

p pattern.match("dee@adadev.org")
p pattern.match("adalovelace@gmail.com")
p pattern.match("magictavern@puppies.supplies")
p pattern.match("dan@adadev.")
p pattern.match("charles.com")
p pattern.match("@adadev.org")
p pattern.match("sarah@.org")

# Exclude somethething
pattern = /[^0-9]/

puts pattern.match("Apple")

# Accept dog, sog, hog, but not bog
pattern = /[^b]og/

# Format for money
money_pattern = /\$\d+\.\d\d$/
