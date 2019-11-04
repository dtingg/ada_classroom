# Given an array of integers write a program that will determine if any two numbers add up to a specified number N

def find_sum?(array, n)
  sorted_array = array.sort
  length = sorted_array.length
  
  if length <= 1
    return false
  end
  
  start_index = 0
  end_index = length - 1
  
  while start_index != end_index
    current_sum = sorted_array[start_index] + sorted_array[end_index]
    
    if current_sum == n
      return true
    elsif current_sum > n
      end_index -= 1
    else
      start_index += 1  
    end
  end
  
  return false
end

p find_sum?([1, 4, 5, 8], 5) # true
p find_sum?([1, 2, 3, 4], 4) # true
p find_sum?([8], 8) # false
