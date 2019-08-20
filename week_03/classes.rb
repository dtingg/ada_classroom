# Ada - Week 01
# Classes

class User
  # Generate reader methods for name and email
  attr_reader :name, :email
  
  # Only generate a writer method for email
  attr_writer :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def transform_into_superhero
    @name = "Super" + @name
  end
  
  def fight(another_user)
    self.transform_into_superhero
    return "#{@name} is fighting #{another_user.name}."
  end
  
  def summary
    return "#{@name}: #{@email}"
  end
  
  def puts_self
    puts self
  end
end

friend = User.new("Dianna", "dianna@ada.org")

puts friend.name
puts friend.email

frenemy = User.new("Josh", "josh@smith.org")

friend.puts_self
frenemy.puts_self

puts friend.fight(frenemy)
