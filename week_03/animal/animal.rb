class Animal
  attr_accessor :type, :color
  attr_reader :distance_from_home
  
  def initialize(type, distance_from_home)
    @type = type
    @distance_from_home = distance_from_home
    @color = "brown"
  end
  
  def travel(amount)
    @distance_from_home -= amount
  end
  
  def summary
    return "The #{@color} #{@type} is #{@distance_from_home} km from home."
  end
end
