# Ada - Week 01
# Data Transformation Worksheet

# Part 1
# Iterating through Arrays
# For each of the following problems, write the code to solve the problem. 
# Each solution should be structured as a method that takes an array as a parameter and returns the result. 
# You should use the Array#each method to solve each problem.

# 1. You are given an array of String objects, stored in a variable called my_strings. 
# You want to use this array to create a new array of Integer objects, which represents the length of each string. 
# We want to store the resulting array in a variable called string_lengths.

# Original version
my_strings = ["apple", "banana", "orange"]

def string_lengths(my_array)
  lengths = []
  
  my_array.each do |string|
    lengths.push(string.length)
  end
  
  return lengths
end

word_lengths = string_lengths(my_strings)

puts "String lengths: #{word_lengths}"

# Enumerable version
def enum_string_lengths(my_array)
  my_array.map do |fruit|
  fruit.length
  end
end

puts "String lengths: #{enum_string_lengths(my_strings)}"

# 2. You are given an array of Integer objects, stored in a variable called my_nums. 
# You want to use this array to create a new array which contains String objects, which say "even" or "odd" depending on the Integer in the original array.

# Original version
my_nums = [1, 2, 3, 4, 5]

def even_or_odd(my_array)
  results = []
  
  my_array.each do |num|
    if num % 2 == 0
      results.push("even")
    else
      results.push("odd")
    end
  end
  return results
end

num_results = even_or_odd(my_nums)

puts "\nEven or odd: #{num_results}"

# Enumerable version
def enum_even_or_odd(my_array)
  my_array.map do |num|
    if num % 2 == 0
      "even"
    else
      "odd"
    end
  end
end

puts "Even or odd: #{enum_even_or_odd(my_nums)}"

# 3. You are given an array of String objects, stored in a variable called my_strings. 
# You want to create a new array which only contains the strings from the original array that have a length that is smaller than 4.

# Original version
my_strings = ["cat", "dog", "bear", "walrus"]

def short_strings(my_array)
  short_strings = []
  
  my_array.each do |string|
    if string.length < 4
      short_strings.push(string)
    end
  end
  return short_strings
end

short_words = short_strings(my_strings)

puts "\nShort strings: #{short_words}"

# Enumerable version
def enum_short_strings(my_array)
  my_array.select do |string| string.length < 4
  end
end

puts "Short strings: #{enum_short_strings(my_strings)}"

# 4. You are given an array of String objects, stored in a variable called my_strings. 
# You want to use this array to return the String that has the longest length. (In a tie, it should return the first String with the longest length)

# Original version
my_strings = ["blueberry", "cherry", "strawberry"]

def longest_string(my_array)
  longest_string = ""
  
  my_array.each do |string|
    if string.length > longest_string.length
      longest_string = string
    end
  end
  return longest_string
end

longest_word = longest_string(my_strings)

puts "\nLongest string: #{longest_word}"

# Enumerable version
def enum_longest_string(my_array)
  my_array.max_by do |string| string.length
  end
end

puts "Longest string: #{enum_longest_string(my_strings)}"

# Transforming Arrays into Hashes
# 1. Given this array of String names, return an array of Hashes. Each Hash should have the keys name and id, 
# which will represent their unique identifier in the form of an integer. The ids can start at 1 and then go up by one.

NAMES = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']

def dwarfs_and_ids(names)
  dwarf_array = []
  
  names.each_with_index do |name, index|
    dwarf_array.push({name: name, id: index + 1})
  end
  return dwarf_array
end

dwarf_ids = dwarfs_and_ids(NAMES)

puts "\nDwarfs and ids: #{dwarf_ids}"

# => [{:name=>"Grumpy", :id=>1},
# {:name=>"Happy", :id=>2},
# {:name=>"Sleepy", :id=>3},
# {:name=>"Bashful", :id=>4},
# {:name=>"Sneezy", :id=>5},
# {:name=>"Dopey", :id=>6},
# {:name=>"Doc", :id=>7}]

# 2. Given this array of String names and this array of String specialties, return an array of Hashes. 
# Each Hash should have the keys name, specialty, and id, which will represent their unique identifier in the form of an integer. 
# The ids can start at 1 and then go up by one.
# NAMES = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']

SPECIALTIES = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

def dwarfs_specialties_ids(names, specialties)
  dwarf_array = []
  
  (names.length).times do |i|
    dwarf_array.push({name: names[i], specialty: specialties[i], id: i + 1})
  end
  return dwarf_array
end

dwarfs_with_specialties_ids = dwarfs_specialties_ids(NAMES, SPECIALTIES)

puts "\nDwarfs, specialties, and ids: #{dwarfs_with_specialties_ids}"

# => [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
# {:name=>"Happy", :specialty=>"smile", :id=>2},
# {:name=>"Sleepy", :specialty=>"nap", :id=>3},
# {:name=>"Bashful", :specialty=>"blush", :id=>4},
# {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
# {:name=>"Dopey", :specialty=>"goof", :id=>6},
# {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

# 3. Given these two arrays of strings, write code that returns an array of arrays. 
# Each element in the larger array should have two elements: the first element is the name, and the second element is the specialty.
# NAMES = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
# SPECIALTIES = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# Original version
def dwarfs_specialties(names, specialties)
  dwarf_specialties = []
  
  (names.length).times do |i|
    dwarf_specialties.push([names[i], specialties[i]])
  end
  return dwarf_specialties
end

dwarfs_with_specialties = dwarfs_specialties(NAMES, SPECIALTIES)

puts "\nDwarfs and specialties: #{dwarfs_with_specialties}"

# Enumerable version
def enum_dwarfs_specialties(names, specialties)
  names.zip(specialties)
end

puts "Dwarfs and specialties: #{enum_dwarfs_specialties(NAMES, SPECIALTIES)}"

# => [["Grumpy", "grump"], ["Happy", "smile"], ["Sleepy", "nap"], ["Bashful", "blush"], ["Sneezy", "sneeze"], ["Dopey", "goof"], ["Doc", "contemplate"]]

# More Transformations

# 1.	Given this array of hashes, iterate through the array and return an array of strings. 
# Each string should be in the following format: Grumpy's specialty is to GRUMP, where Grumpy is replaced with each name and GRUMP is the specialty in capital letters.

CHARACTERS = [
  {:name=>"Grumpy", :specialty=>"grump", :id=>1},
  {:name=>"Happy", :specialty=>"smile", :id=>2},
  {:name=>"Sleepy", :specialty=>"nap", :id=>3},
  {:name=>"Bashful", :specialty=>"blush", :id=>4},
  {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
  {:name=>"Dopey", :specialty=>"goof", :id=>6},
  {:name=>"Doc", :specialty=>"contemplate", :id=>7}
]

def character_specialties(characters)
  specialties = []
  
  characters.each do |character|
    sentence = "#{character[:name]}'s specialty is to #{character[:specialty].upcase}"
    specialties.push(sentence)
  end
  return specialties
end

specialties = character_specialties(CHARACTERS)

puts "\nCharacter specialties: #{specialties}"

# => ["Grumpy's specialty is to GRUMP",
# "Happy's specialty is to SMILE",
# "Sleepy's specialty is to NAP",
# "Bashful's specialty is to BLUSH",
# "Sneezy's specialty is to SNEEZE",
# "Dopey's specialty is to GOOF",
# "Doc's specialty is to CONTEMPLATE"]

# Part 2
# Don't do this part until going through the Enumerable lectures.
# Using Enumerable methods
# Rewrite each solution in the section "Iterating through Arrays"

# Bonus
# Is there a method from Enumerable you can use to solve #3 in "Transforming Arrays into Hashes"? Hint: it is not a method covered in the class's Jigsaw activity.
