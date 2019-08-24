module ModuleName
  # Define a constant
  CONSTANT_NAME = 4
  
  # Define a method
  def self.method_name
    # ...
  end
  
  # Define a class
  class ClassName
    def initialize(a, b)
      # ...
    end
    
    def instance_method
      # ...
    end
  end
end

module CraftStore
  class String
    def initialize(color, quantity)
      @color = color
      @quantity = quantity
    end
  end
end

our_string = CraftStore::String.new("green", 100)
ruby_string = String.new("ruby string")

puts our_string.class
puts ruby_string.class
