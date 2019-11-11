# Given a string, determine if the second string is included.

def interesting?(original_string, sub_string)
  if original_string.length == sub_string.length
    return original_string == sub_string
  elsif 
    original_string.start_with?(sub_string)
    return true
  else
    return interesting?(original_string[1..-1], sub_string)
  end  
end

p interesting?("shiv", "hi")
p interesting?("shiv", "hiv")
p interesting?("shiv", "vs")
