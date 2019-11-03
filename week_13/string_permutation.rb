# You are given two strings S1 & S2, how can you identify if S1 is a permutation of S2?

# Examples
# "cat" && "atc"
# "dog" && "do"
# "" && ""
# "cat" && "caty"

def is_perm?(s1, s2)
  if s1.length != s2.length
    return false
  end
  
  letter_hash = {}
  
  s1.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  s2.each_char do |char|
    if letter_hash[char]
      if letter_hash[char] == 1
        letter_hash.delete(char)
      else
        letter_hash[char] -= 1
      end
    else
      return false
    end
  end
  
  if letter_hash.empty?
    return true
  else
    return false
  end
end

p is_perm?("cat", "atc") # true
p is_perm?("dog", "do") # false
p is_perm?("", "") # true
p is_perm?("cat", "caty") # false
