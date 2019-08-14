require 'pry'

def do_something(thing)
  binding.pry
  thing = do_part_1(thing)
  thing = do_part_2(thing)
  return thing
end

def do_part_1(thing)
  value = 6
  thing[:my_number] = thing[:my_number] * value
  return thing
end

def do_part_2(thing)
  value = 2
  thing[:my_number] = thing[:my_number] ** value
  return thing
end

do_something({my_number: 4})
