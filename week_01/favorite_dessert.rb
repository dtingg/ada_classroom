# Ada - Week 01

def find_favorite_dessert(dessert_list)
  
  favorite_dessert = nil
  # 1:
  puts "The value of favorite_dessert: #{favorite_dessert}"
  best_score = 0
  
  dessert_list.each do |dessert|
    puts "On a scale of 1 to 10, how much do you like #{dessert}?"
    score = gets.chomp.to_i
    if score > best_score
      favorite_dessert = dessert
      best_score = score
    end
  end
  
  # 2:
  # puts "The value of score: #{score}"
  
  # 3:
  puts "The value of best_score: #{best_score}"
  
  # 4:
  puts "The value of favorite_dessert: #{favorite_dessert}"
  
  return favorite_dessert
  
end

# 5:
# puts "The value of dessert: #{dessert}"

dessert = find_favorite_dessert(['pie', 'cake', 'ice cream'])

# 6:
puts "The value of dessert: #{dessert}"

puts "Sounds like you're a big fan of #{dessert}!"

# 1. Given the input 5, 9, 1, what is the output for #1 or what happens when the code for #1 tries to execute?
# nil

# 2. Uncomment the line under #2 (aka puts "The value of score: #{score}"). Given the input 5, 9, 1, what is the output for #2 or what happens when the code for #2 tries to execute?
# error

# 3. Comment the line under #2 again. Given the input the input 5, 9, 1, what is the output for #3?
# 9

# 4. ... for #4?
# cake

# 5. Uncomment the line under #5 (aka puts "The value of dessert: #{dessert}"). Given the input 5, 9, 1, what is the output for #2 or what happens when the code for #5 tries to execute?
# error

# 6. Comment the line under #5 again. Given the input the input 5, 9, 1, what is the output for #6?
# cake

# Hint: Use a whiteboard, write out the code line by line, and mark and color-code the scope of each variable.
# Bonus: Make a loop table for this method.
