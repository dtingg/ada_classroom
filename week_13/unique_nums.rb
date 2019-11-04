# Write a method that accepts a sorted array of numbers and removes the duplicates, 
# returns an array of the unique numbers, still in order.

def unique_nums(array)
  new_array = array
  index = 0
  
  length = new_array.length
  
  while index < length
    if new_array[index] == new_array[index + 1]
      new_array.delete_at(index + 1)
      length -= 1
    else
      index += 1
    end
  end
  
  return new_array
end

p unique_nums([1, 1, 4, 5, 5]) # [1, 4, 5]
p unique_nums([3]) # [3]
p unique_nums([1, 1, 1]) # [1]
