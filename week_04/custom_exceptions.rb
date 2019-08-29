class EmptyBoxError < StandardError
end

class CinnamonCereal
  def initialize(box, milk, spoon, bowl)
    @box = box
    @milk = milk
    @spoon = spoon
    @bowl = bowl    
  end
  
  def eat
    if @box == 0
      raise EmptyBoxError.new("The box is EMPTY! A TRAGEDY!")
    end
    @box -= 1
    puts "YUM CEREAL"
  end
end

captain_crunch = CinnamonCereal.new(1, "whole", "Fun Spoon", "not cracked")

captain_crunch.eat
captain_crunch.eat
