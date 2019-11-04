# Write a method that takes in an array of arrays. 
# Each array has two numbers inside, the length and width of a rectangle. 
# Example input: [[1,2],[4,6],[4,3]]. Return the largest area.

def find_largest_area(array)
  largest_area = 0
  
  array.each do |pair|
    area = pair[0] * pair[1]
    if area > largest_area
      largest_area = area
    end
  end
  return largest_area
end

p find_largest_area([[1,2],[4,6],[4,3]]) # 24

# Time: O(n)
# Space: O(1)
