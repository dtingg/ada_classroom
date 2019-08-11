# Ada - Week 01
# Scope exercise

# find the equation of a line given two points
def find_line_equation(x1, y1, x2, y2)
  
  # -- 1 -- 
  # puts "The slope is #{m}."
  # puts "The y-intercept is #{b}."
  
  # -- 2 -- 
  puts "The equation of the line through point (#{x1},#{y1}) and (#{x2},#{y2}) is: "
  m = nil
  b = nil
  
  if x2 != x1
    m = (y2-y1)/(x2-x1)
    b = y1 - m*x2
  else
    vertical = true
  end
  
  # -- 3 -- 
  if m == 0
    puts "y = #{y1}"
  elsif vertical == true
    puts "x = #{x1}"
  elsif b < 0
    puts "y = #{m}x - #{-1*b}"
  elsif b == 0
    puts "y = #{m}x"
  else 
    puts "y = #{m}x + #{b}"
  end
  
  return {slope: m, y_intercept: b}
end

result = find_line_equation(2, 4, 3, 5)

# -- 4 --
puts "The slope is #{result[:slope]}."
puts "The y-intercept is #{result[:y_intercept]}."
