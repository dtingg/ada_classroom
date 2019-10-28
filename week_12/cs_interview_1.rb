# Write a program to check whether a given number is an ugly number.
# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.

def ugly_num(num)
  result = num
  
  while result > 1
    if num % 2 == 0
      result /= 2
    elsif num % 3 == 0
      result /= 3
    elsif num % 5 == 0
      result /= 5
    else
      return false
    end
  end
  return true
end

p ugly_num(30) # true
p ugly_num(7) # false
p ugly_num(16) # true
p ugly_num(1) # true

def ugly_num?(num)
  if num <=1
    return false
  end
  
  while num % 2 == 0
    num /= 2
  end
  
  while num % 3 == 0
    num /= 3
  end
  
  while num % 5 == 0
    num /= 5
  end
  
  return num == 1
end

p ugly_num?(30) # true
p ugly_num?(7) # false
p ugly_num?(16) # true
p ugly_num?(1) # true

# Time complexity: O(log2n)
# Space complexity: 0(1)
