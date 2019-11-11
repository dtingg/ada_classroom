# Interview Questions - Algorithms

# Strings
# Strip whitespace from a string in-place e.g.
# "H e  llo W orl     d" becomes "HelloWorld"

def strip_spaces(string)
  length = string.length
  index = 0
  pointer = 0
  
  while pointer < length
    if string[pointer] != " "
      string[index] = string[pointer]
      index += 1
      pointer += 1
    else
      pointer += 1
    end
  end
  return string[0...index]  
end

p strip_spaces("H e  llo W orl     d")

# Remove duplicate chars from a string e.g. "AAA BBB" -> "A B"

def remove_duplicates(string)
  new_string = string[0]
  length = string.length
  
  (1...length-1).each do |i|
    if string[i] == string[i-1]
      next
    else
      new_string << (string[i])
    end
  end
  
  return new_string
end

def remove_duplicates_in_place(string)
  length = string.length
  
  index = 0
  pointer = 0
  
  while pointer < length
    if string[pointer] != string[pointer+1]
      string[index] = string[pointer]
      index += 1
      pointer += 1
    else
      pointer += 1
    end
  end
  
  return string[0...index]
end

p remove_duplicates("AAA BBB") # A B
p remove_duplicates("AAABBBCC") # ABC

p remove_duplicates_in_place("AAA BBB") # A B
p remove_duplicates_in_place("AAABBBCC") # ABC

# Find the first non-repeating character in a string e.g. "ABCA" -> B
def first_unique_char(string)
  letter_hash = {}
  
  string.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  string.each_char do |char|
    if letter_hash[char] == 1
      return char
    end
  end
  
  return ""
end

p first_unique_char("ABCA") # B

# Reverse a string e.g. "Hello" --> "olleH"
def reverse_string(string)
  new_string = ""
  index = -1
  
  length = string.length
  
  length.times do
    new_string << string[index]
    index -= 1
  end
  return new_string
end

p reverse_string("Hello") # olleH

# Reverse words in a string (words are separated by one or more spaces). e.g. "This is stuff" --> "stuff is This" Extra fun: Do it in-place.
def reverse_stuff(string)
  if string.length == 1
    return string
  else
    return string[-1] + reverse_stuff(string[0...-1])
  end
end

def reverse_words(string)
  reverse_sentence = reverse_stuff(string)
  
  word_parts = reverse_sentence.split(" ")
  
  new_sentence = []
  
  word_parts.each do |word|
    new_sentence << reverse_stuff(word)
  end
  
  final_sentence = new_sentence.join(" ")
  return final_sentence
end

p reverse_words("This is stuff") # stuff is This

# Arrays
# You are given an unsorted array with integers between 1 and 1,000,000. One integer is in the array twice. Determine which one. Extra fun: Do it without sorting.
def find_duplicate(array)
  array.sort!
  
  array.each_with_index do |int, index|
    if array[index] == array[index + 1]
      return array[index]
    end
  end
end

p find_duplicate([6, 1, 10, 3, 5, 1]) # 1

# You are given an unsorted array containing all integers between 1 and 1,000,000. One integer is missing. How can you determine which one? Extra fun: Can you think of a way to do it by iterating through the array only once, without sorting?
def find_missing(array)
  array.sort!
  
  array.each_with_index do |int, index|
    if (array[index] + 1) != array[index + 1]
      return array[index] + 1
    end
  end
end

p find_missing([9, 1, 8, 2, 5, 3, 4, 7, 8]) # 6

#   Return the sum of the two largest integers in an array e.g. Given [19, 4, 2, -19, 100, 9], return 119 (100 + 19)
def find_two_largest(array)
  array.sort!
  
  return array[-1] + array[-2]
end

p find_two_largest([19, 4, 2, -19, 100, 9]) # 119

def find_two_largest2(array)
  highest = 0
  second_highest = 0
  
  array.each do |number|
    if number > highest
      second_highest = highest
      highest = number
    elsif number > second_highest
      second_highest = number
    end
  end
  
  return highest + second_highest
end

p find_two_largest2([19, 4, 2, -19, 100, 9]) # 119
