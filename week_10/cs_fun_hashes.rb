def find_evil_twins(array)
  hash = {}
  results = []
  array.each do |pair|
    if hash[pair[1]] == pair[0]
      
      results << [pair[1], pair[0]]
    else
      hash[pair[0]] = pair[1]      
    end
  end
  
  return results
end

# Input: arr[] = {{11, 20}, {30, 40}, {5, 10}, {40, 30}, {10, 5}}
# Output: Following pairs have symmetric pairs
# (30, 40)
# (5, 10) 
p find_evil_twins([[11, 20], [30, 40], [5, 10], [40, 30], [10, 5]])

# Input: arr[] = {{"Dan", "Dee"}, {"Lisa", "Val"}, {"Kaida", "Chris"}, {"Devin", "Susan"}, {"Christine", "Jane"}}
# Output: No symmetric pairs
p find_evil_twins([["Dan", "Dee"], ["Lisa", "Val"], ["Kaida", "Chris"], ["Devin", "Susan"], ["Christine", "Jane"]])

# Input: arr[] = {{"Dan", "Dee"}, {"Kaida", "Val"}, {"Kaida", "Chris"}, {"Devin", "Susan"}, {"Dee", "Dan"}, {"Devin", "Susan"}}
# Output: Following pairs have symmetric pairs
# (Dan, Dee)
p find_evil_twins([["Dan", "Dee"], ["Kaida", "Val"], ["Kaida", "Chris"], ["Devin", "Susan"], ["Dee", "Dan"], ["Devin", "Susan"]])
