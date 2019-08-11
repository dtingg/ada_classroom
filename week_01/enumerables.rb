# Ada - Week 01
# Enumerables

# Greetings
greetings = ['hello', 'howdy', 'hey there']

loud_greetings = greetings.map do |greeting| 
  greeting.upcase
end

puts "#{loud_greetings}"
# loud_greetings => ["HELLO", "HOWDY", "HEY THERE"]

# Elements
result = ['first element', 'second element', 'third element'].map do |element|
  "#{element.split(' ').first}"
end

puts "#{result}"
# result => ["first", "second", "third"]

# Meal Plan
meal_plan = {
  breakfast: "waffles",
  lunch: "sandwich",
  dinner: "rice and curry"
}

result = meal_plan.map do |key, value|
  "key: #{key}, value: #{value}"
end

p result
# result => ["key: breakfast, value: waffles", "key: lunch, value: sandwich", "key: dinner, value: rice and curry"]

# Practice map on hashes
# Solve this first using an each loop, then refactoring it to use map.

# Given the following hash students, assign to a new variable a new array formatted_names. 
# In the new array, each element should be hash with the same key, but the value in upcase (CAPITAL) letters.
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}

formatted_names = []

students.each do |student, name|
  formatted_names.push({student => name.upcase})
end

p formatted_names
  
map_formatted_names = students.map do |student, name|
  {student => name.upcase}
end

p map_formatted_names

# formatted_names => [{:student_a=>"DASHER"}, {:student_b=>"DANCER"}, {:student_c=>"PRANCER"}]
