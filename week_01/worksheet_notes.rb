# Step 0: Understand the data we need to organize

# 1. What things (objects, nouns) are represented or described in this file? We can think of at least six different things.
#
# drivers, dates, costs, riders, ratings, ride share data

# 2. From the things you listed in the previous question, all of those things have relationships to each other. (an ID belongs to a person, for instance. 
# As an abstract, unrelated example a VIN belongs to a vehicle, and a vehicle has a VIN.) Consider the relationships between the pieces of data.
#
# driver_id belongs to a driver, is related to a ride
# date is related to a ride
# cost is related to a ride
# rider_id belongs to a rider, is related to a ride
# rating is related to a ride

# 3. Lastly, in this assignment, we will rearrange all of the data into one data structure (with a lot of nested layers), that can be held in one variable. 
# List some ideas: considering all of the relationships listed in the last question, what piece of data can contain the others at the top-most level? 
# (Compared to the json example before, think about what the top-most layer of the hash and what that represented.) There is more than one correct answer, 
# so just list out the options at this moment.
#
# A hash can contain the other pieces of data at the top-most level.
#
# Sorted by driver
# ride_history = {“driver_id”: [{date: x, cost: x, rider_id: x, rating: x},
#                               {date: x, cost: x, rider_id: x, rating: x},
#                               {date: x, cost: x, rider_id: x, rating: x}]}
#
# Sorted by rider
# ride_history = {“rider_id”:  [{date: x, cost: x, driver_id: x, rating: x},
#                               {date: x, cost: x, driver_id: x, rating: x},
#                               {date: x, cost: x, driver_id: x, rating: x}]}

########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
# 1. Hash: key is driver_id, value is an array
# 2. Array: each item is a hash
# 3. Hash: keys are date/cost/rider_id/rating, values are a single string or integer

# Which layers are nested in each other?
# I think all of the layers are nested in each other because everything is contained in one variable.

# Which layers of data "have" within it a different layer?
# The value for each driver_id is an array that contains many hashes.

# Which layers are "next" to each other?
# All of the ride details are next to each other (date, cost, rider_id, rating)

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have
# 1. ride_history is a hash
# 2. each key's value is an array
# 3. each array contains a hash for each ride completed

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"

ride_history = {
  DR001:
  [ 
    {date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
    {date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4},
    {date: "5th Feb 2016", cost: 45, rider_id: "RD0003", rating: 2} 
  ],
  DR002:
  [ 
    {date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
    {date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
    {date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3} 
  ],
  DR003:
  [ 
    {date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
    {date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2} 
  ],
  DR004:
  [ 
    {date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
    {date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
    {date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 5} 
  ]
}

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

puts "RIDE SHARE SUMMARY"

# Use an iteration blocks to print the following answers:

# - the number of rides each driver has given
puts "\nThe number of rides each driver has given:"

def print_number_rides(my_hash)
  my_hash.each do |driver, rides|
    puts "#{driver} did #{rides.length} rides."
  end
end

print_number_rides(ride_history)

# - the total amount of money each driver has made
puts "\nThe total amount of money each driver has made:"

def get_drivers_earnings(my_hash)
  drivers_earnings = {}
  
  my_hash.each do |driver, rides|
    earnings = rides.sum do |ride|
      ride[:cost]
    end
    drivers_earnings[driver] = earnings
  end
  
  return drivers_earnings
end

drivers_earnings = get_drivers_earnings(ride_history)

drivers_earnings.each do |driver, earnings|
  puts "#{driver} has made $#{"%.2f" % earnings}."
end

# - the average rating for each driver
puts "\nThe average rating for each driver:"

def get_drivers_avg_ratings(my_hash)
  avg_ratings = {}
  
  my_hash.each do |driver, rides|
    ratings = rides.map do |ride|
      ride[:rating]
    end
    avg_ratings[driver] = ratings.sum / ratings.length.to_f
  end
  return avg_ratings
end

average_ratings = get_drivers_avg_ratings(ride_history)

average_ratings.each do |driver, average|
  puts "#{driver} has an average rating of #{"%.2f" % average}."
end

# - Which driver made the most money?

# Returns a hash with the keys/values that have the highest value
def highest_keys(my_hash)
  max_value = my_hash.values.max
  highest_keys = my_hash.select do |key, value|
    value == max_value
  end
  
  return highest_keys
end

highest_earning_drivers = highest_keys(drivers_earnings)

print "\nThe highest earning "

if highest_earning_drivers.length == 1
  print "driver is: "
else
  print "drivers are: "
end

puts "#{highest_earning_drivers.keys.join(", ")}."

# - Which driver has the highest average rating?

highest_rated_drivers = highest_keys(average_ratings)

print "\nThe highest rated "

if highest_rated_drivers.length == 1
  print "driver is: "
else
  print "drivers are: "
end

puts "#{highest_rated_drivers.keys.join(", ")}."

# Optional - For each driver, on which day did they make the most money?

def get_money_per_day(my_array)
  days = {}
  
  my_array.each do |ride|
    day = ride[:date].to_sym
    
    if days.has_key?(day)
      days[day] += ride[:cost]
    else
      days[day] = ride[:cost]
    end
  end
  return days
end

def print_drivers_best_days(my_hash)
  my_hash.each do |driver, days|
    money_per_day = get_money_per_day(days)
    
    best_days = highest_keys(money_per_day)
    
    puts "Driver #{driver} made the most money on: #{best_days.keys.join(", ")}."
  end
end

puts "\n"

print_drivers_best_days(ride_history)
