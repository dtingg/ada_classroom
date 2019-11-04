# Write a method is_rotation that, given two strings, will determine if one string is a rotation of the other.
# e.g.  is_rotation("doghouse", "usedogho") returns true
# You can rotate the letters of "usedogho" to create "doghouse"
# e.g.  is_rotation("dog", "dgo") returns false
# This is not a rotation even though the same letters are used exactly.
# Note: This is not a permutation problem.

def is_rotation(s1, s2)
  return false if s1.length != s2.length
  
  s1.length.times do |i|
    if s1 == s2
      return true
    else
      s1 = s1[1..-1] + s1[0]
    end
  end
  return false
end

p is_rotation("doghouse", "usedogho") # true
p is_rotation("dog", "dgo") # false
