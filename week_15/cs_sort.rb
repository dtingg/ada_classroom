def merge_lists(left, right)
  result = []
  i = 0
  j = 0
  left_len = left.length
  right_len = right.length
  
  while i < left.length && j < right.length
    if left[i] < right[j]
      result.push(left[i])
      i += 1
    else
      result.push(right[j])
      j += 1
    end
  end
  
  while i < left.length
    result << left[i]
    i += 1
  end
  
  while j < right.length
    result << right[j]
    j += 1
  end
  
  return result
end

left = [1, 3, 5, 7, 9]
right = [6, 7, 8, 10]

p merge_lists(left, right)
