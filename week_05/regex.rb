# Write a regex that will match only strings without any leading whitespace.
matches = ["ada", "ada academy", "ada "]
non_matches = [" ada", " ada ", " "]

pattern = /^\S.*/

puts "No leading whitespace (3 match, 3 don't)"

matches.each do |match|
  if pattern.match(match)
    puts "It matches."
  else
    puts "It doesn't match."
  end
end

non_matches.each do |match|
  if pattern.match(match)
    puts "It matches."
  else
    puts "It doesn't match."
  end
end

# Capture Groups

# An IP address like 127.0.0.1, or 206.190.36.45, Only worry about the numbers being a max of 3 digits.
ip_addresses = ["127.0.0.1", "206.190.36.45"]

ip_pattern = /((\d){1,3}\.){3}(\d){1,3}/ 

puts "\nIP Addresses (2 matches)"
ip_addresses.each do |address|
  if ip_pattern.match(address)
    puts "It matches."
  else
    puts "It doesn't match."
  end
end

# "Ada", "Ada Academy" or "Ada Developers Academy", but not "Ada Developers" by itself. 
# Should be case-insensitive (so both "Ada" and "ada" are OK).
ada_pattern = /^ada(( developers)? academy)?$/i

puts "\nAda (3 matches, 1 doesn't)"

test_strings = ["Ada", "Ada Academy", "Ada Developers Academy", "Ada Developers"]

test_strings.each do |string|
  if ada_pattern.match(string)
    puts "It matches."
  else
    puts "It doesn't match."
  end
end

# IP Address
ip_address = "127.0.0.1"

puts "\nIP Address (1 match)"

if /(\d{1,3}\.){3}\d{1,3}/.match(ip_address)
  puts "It matches."
else
  puts "It doesn't match."
end

# Email
email_regex = /(.+)@(.+\..+)/
match_result = "dan@adadev.org".match(email_regex)

puts "\nE-mail capture groups (0, 1, 2)"
puts match_result[0]
puts match_result[1]
puts match_result[2]

# Phone
phone_match = /.*(\d{3}).*(\d{3}).*(\d{4})/

phone_numbers = ["(206) 555-1234", "425-555-9999", "406.555.1818", "+1 206 555 8888", "4255558872"]

puts "\nPhone numbers"
phone_numbers.each do |number|
  match = number.match(phone_match)
  puts "(#{match[1]}) #{match[2]}-#{match[3]}"
end
