# Given an unordered array of integers, calculate the max, sum, average and median.
# P.S: Discuss the efficiency of your algorithm.

def math(array)
  new_array = array.sort
  length = new_array.length
  
  highest_num = new_array[-1]
  sum = 0
  
  new_array.each do |number|
    sum += number
  end
  
  average = sum / length.to_f
  median = new_array[length/2]
  
  return [highest_num, sum, average, median]
end

p math([4, 5, 3, 1]) # 5, 13, 3.25, 4
p math([4, 3, 2]) # 4, 9, 3.0, 3
