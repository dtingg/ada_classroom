# White-boarding practice 1

# Write a method to find the first non-repeated character in a string. 
# For instance, the first non-repeated character in “total” is ‘o’ 
# and the first non-repeated character in “teeter” is ‘r’. 
# P.S: Discuss the efficiency of your algorithm.

# Clarifying questions
# 1. Should I ignore case? (yes)
# 2. Will there be spaces in the string? Do those count as characters? (no spaces)
# 3. What should I return? A string? (a string)
# 4. What should I return if there are no non-repeated characters? (empty string)

def first_unique_char(string)
  char_hash = {}
  string.each_char do |char|
    if char_hash[char] 
      char_hash[char] += 1
    else
      char_hash[char] = 1
    end
  end
  
  string.each_char do |char|
    if char_hash[char] == 1
      return char
    end
  end
  
  return ""
end

p first_unique_char("total") # o
p first_unique_char("teeter") # r
p first_unique_char("aabbcc") # ""

# Time: O(n)
# Space: O(n)
