# Write a method that accepts a sorted array of numbers and removes the duplicates, 
# returns an array of the unique numbers, still in order.

def unique_nums(array)
  new_array = [array[0]]
  
  array.each do |number|
    if number == new_array[-1]
      next    
    else
      new_array.push(number)
    end
  end
  return new_array
end

p unique_nums([1, 1, 4, 5, 5]) # [1, 4, 5]
p unique_nums([3]) # [3]
p unique_nums([1, 1, 1]) # [1]

# Return new array or update existing array?
# Time: O(n)
# Space: O(n) if creating new array
