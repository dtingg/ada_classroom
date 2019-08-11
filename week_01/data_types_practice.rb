# Ada - Week 01
# Data Types Practice Worksheet

# 1. Value: 32  Data Type: Integer
num = 27
num = num + 5
num

# 2. Value: 6 Data Type: Integer
num = 2
num = num + num + 2
num

# 3. Value "44" Data Type: String
num = "4"
num = num + num
num

# 4. Value "dinosaur astronaut" Data Type: string
cool_thing = "dinosaur"
awesome_thing = "astronaut"
rad_thing = cool_thing + " " + awesome_thing
rad_thing

# 5. Value 16 Data Type: Integer
num = 2
num = num * num
num = num * num
num

# 6. Value 0 Data Type: Integer
num = 27
answer = num % 3
answer

# 7. Value 12 Data Type: Integer
num = 100
num = num / 2
num = num / 2
num = num / 2
num

# 8. Value 12.5 Data Type: Float
num = 100.0
num = num / 2
num = num / 2
num = num / 2
num

# 9. Value 6.5 Data Type: Float
num = 5.0
num = num * 2 + 3
num = num / 2

# 10. Value :dan Data Type: symbol
answer = :dan
answer

# 11. Value ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"] Data Type: Array
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list

# 12. Value "Charizard" Data Type: String
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[3]

# 13. Value "Bulbasaur" Data Type: String
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[1]

# 14. Value 4 Data Type: Integer
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list.length

# 15. Value "Pikachu" Data Type: "String"
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list.first

# 16. Value nil Data Type: NilClass
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[4]

# 17. Value "Charizard" Data Type: String
list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[-1]

# 18. Value { name: "Pikachu", type: :electric, species: "Mouse Pokemon", height: 0.41, weight: 6.0, id: 25 } Data Type: Hash
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu

# 19. Value "Pikachu" Data Type: String
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu[:name]

# 20. Value 25 Data Type: Integer
pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu[:id]

# Comprehension Questions
# 1. Given a variable list which is an array:
# Example: list = ["a", "b", "c"]
# How would you print the last element of the array?  puts list.last
# How about the first?  puts list.first

# 2. Compare and contrast arrays and hashes. How are they similar, and how do they differ?
# Arrays contain ordered objects.  Hashes contain unordered keys and values.
