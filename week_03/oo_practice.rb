# Object Oriented Design Practice

# The purpose of this exercise is to give you practice designing objects and the way they would interact. 
# The goal is not to write the code to complete the exercise, though you're welcome to if you would like. 
# There aren't right or wrong answers, specifically, but decisions you can make to structure your code.

# Problem Statement
# We need to design a system that would allow us to utilize a deck of cards in a BlackJack game. 
# This deck and cards should not have behavior specific to any particular game, while a Game class would relate to the specific implementation of BlackJack.

# The user of a deck of cards should be able to shuffle the cards as well as deal cards. 
# To deal, the user should be able to specify the number of players who will be dealt a specified number of cards.

# Design
# Questions:
# * How does a deck relate to a Game?
# A Game contains one or more decks.

# * How does a card relate to a deck?
# A Deck contains 52 different cards.

# * What properties would a Game have?
# A Game needs a list of players.

# * What properties does a card have?
# A Card needs a value and a suit.

# Complete
# Determine which classes you would create
# * For each class, define the attributes and methods you would utilize
# * Method definitions should include any parameters you would be using as well as return values

# Game - attributes: number of players
# Deck - methods: shuffle(), deal(number of players, number of cards)
# Hand - attributes: current_cards
# Card - attributes: value, suit
# Person - attributes: name

class Player
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

class Hand
  def initialize
  end
end

class Deck
  def initialize
    @card_list = []
    make_a_deck
  end
  
  def make_a_deck
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits = ["hearts", "diamonds", "clubs", "spades"]
    
    values.each do |value|
      suits.each do |suit|
        @card_list.push(Card.new(value, suit))
      end
    end
  end
  
  def shuffle_cards
    @card_list.shuffle!
  end
  
  def deal(player, number of cards)
    
  end
  
end

class BlackJack
  def initialize(number_of_players)
    @number_of_players = number_of_players
    @all_players = []
  end  
  
  def make_player
    print "What is the player's name? "
    player_name = gets.chomp
    
    new_player = Player.new(player_name)
    
    @all_players.push(new_player)
  end
end

def main
  print "How many players?: "
  num_players = gets.chomp.to_i
  game = BlackJack.new(num_players)
end
