# Enumerable Jigsaw

# uniq

# 1. What does this method do on a high level?
  # Removes duplicate values
# 2. What does it return?
  # A new array with duplicates removed
# 3. What does the code block do?
a = [ "a", "a", "b", "b", "c" ]
a.uniq   # => ["a", "b", "c"]

b = [["student","sam"], ["student","george"], ["teacher","matz"]]
b.uniq {|s| s.first}   # => [["student", "sam"], ["teacher", "matz"]]

# 4. What kind of syntax does it require?
  # .uniq

# 5. What does a code example look like?
letters = ["x", "y", "z", "y", "z"]

result = letters.uniq

p result

# sum

# 1. What does this method do on a high level?
  # Sums up all elements

# 2. What does it return?
  # Returns sum of elements

# 3. What does the code block do?
sum_hash = { 1 => 10, 2 => 20 }.sum {|k, v| k * v }  
p sum_hash  #=> 50

sum_array = (1..10).sum                               
p sum_array  #=> 55

# (1..10).sum {|v| v * 2 }                  #=> 110
# [Object.new].each.sum                     #=> TypeError

# 4. What kind of syntax does it require?
  # .sum

# 5. What does a code example look like?

example = [1, 2, 3, 4, 5]

p example.sum  # 15
p example.sum(5)  # 20
