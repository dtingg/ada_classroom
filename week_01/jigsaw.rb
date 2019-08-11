# Jigsaw

# 1. What does this method do on a high level?
# 2. What does it return?
# 3. What does the code block do?
# 4. What kind of syntax does it require?
# 5. What does a code example look like?

# Array#first & Array#last & Array#rotate

# Array#first
1. Gets first element(s) from array
2. Returns first element(s) from array
3. 

a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

4. array.first(n=1)
5. array = [1, 2, 3]
  array.first  => 1
  array.first(2) => [1,2]

#Array#last
1. Gets last element(s) from array
2. Returns last element(s) from array
3.
a = [ "w", "x", "y", "z" ]
a.last     #=> "z"
a.last(2)  #=> ["y", "z"]

4. array.last(n=1)
5. array = [1, 2, 3, 4, 5]
array.last = 5
array.last(2) = [4, 5]

# Array#rotate
1. Rotates two elements in an array
2. Returns new array
3. 
a = [ "a", "b", "c", "d" ]
a.rotate         #=> ["b", "c", "d", "a"]
a                #=> ["a", "b", "c", "d"]
a.rotate(2)      #=> ["c", "d", "a", "b"]
a.rotate(-3)     #=> ["b", "c", "d", "a"]

rotates first element and element at n

4. array.rotate(n=1)

5. array = [1, 2, 3, 4, 5]
array.rotate(2)!

array = [3, 2, 1, 4, 5]
