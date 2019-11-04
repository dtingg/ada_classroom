# Given a sentence, determine whether it is a pangram. Ignore case.
# Definition:  A Panagram is a string which contains every letter of the alphabet.  
# Example "The quick brown fox jumps over the lazy dog"

def is_pangram?(string)
  alphabet_hash = { "a"=>false, "b"=>false, "c"=>false, "d"=>false, "e"=>false,
  "f"=>false, "g"=>false, "h"=>false, "i"=>false, "j"=>false, "k"=>false, "l"=>false,
  "m"=>false, "n"=>false, "o"=>false, "p"=>false, "q"=>false, "r"=>false, "s"=>false, 
  "t"=>false, "u"=>false, "v"=>false, "w"=>false, "x"=>false, "y"=>false, "z"=>false }
  
  return false if string.length < 26
  
  string.each_char do |char|
    alphabet_hash[char.downcase] = true
  end
  
  alphabet_hash.each do |letter, value|
    if value == false
      return false
    end
  end
  
  return true  
end

p is_pangram?("We promptly judged antique ivory buckles for the next prize") # true
p is_pangram?("apple") # false
p is_pangram?("The quick brown fox jumps over the lazy dog") # true
