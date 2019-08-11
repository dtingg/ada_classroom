# Ada - Week 01

# 1. checkends(s)
def checkends(s)
  if s[0] == s[-1]
    return true
  end
  return false
end

puts checkends("no match")
puts checkends("hah! a match")
puts checkends("q")
puts checkends(" ")

# 2. flipside(s)
def flipside(s)
  middle = s.length / 2
  first_half = s[0...middle]
  second_half = s[middle..-1]
  return second_half + first_half
end

puts flipside("homework")
puts flipside("carpets")

# 3. rock_paper_scissors
def game_input
  objects = ["rock", "paper", "scissors"]
  return objects.sample
end

def rock_paper_scissors
  puts "Welcome to Rock Paper Scissors"
  print "Which object do you choose? "

  objects = ["rock", "paper", "scissors"]

  user_object = gets.chomp.downcase

  until objects.include?(user_object)
    print "Please choose a valid object: "
    user_object = gets.chomp.downcase
  end

  computer_object = game_input

  if user_object == computer_object
    puts "The computer picked #{computer_object}. It's a tie."
  elsif user_object == "rock"
    puts "The computer picked #{computer_object}."
    if computer_object == "paper"
      puts "You lose."
    else
      puts "You win."
    end
  elsif user_object == "paper"
    puts "The computer picked #{computer_object}."
    if computer_object == "scissors"
      puts "You lose."
    else
      puts "You win."
    end
  elsif user_object == "scissors"
    puts "The computer picked #{computer_object}."
    if computer_object == "rock"
      puts "You lose"
    else
      puts "You win"
    end
  end
end

play_again = true

while play_again
  rock_paper_scissors

  print "Do you want to play again? Y or N: "
  answer = gets.chomp.upcase

  until answer == "Y" || answer == "N"
    print "Please enter Y or N: "
    answer = gets.chomp.upcase
  end

  if answer == "N"
    play_again = false
  end
end
