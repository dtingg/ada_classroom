class Product
  attr_accessor :name, :quantity_in_stock
  attr_reader :quantity_sold
  
  def initialize(name, quantity_in_stock)
    @name = name
    @quantity_in_stock = quantity_in_stock
    @quantity_sold = 0
  end
  
  # def name
  #   return "Chocolate Chip Cookies"
  # end
  
  # def name
  #   return @name
  # end
  
  # def name=(new_name)
  #   @name = new_name
  # end
  
  # def quantity_in_stock
  #   return 100
  # end
  
  # def quantity_in_stock
  #   return @quantity_in_stock
  # end
  
  # def quantity_in_stock=(new_quantity_in_stock)
  #   @quantity_in_stock = new_quantity_in_stock
  # end
  
  # def quantity_sold
  #   return @quantity_sold
  # end
  
  def available?
    return @quantity_in_stock > 0
  end
  
  def sell(amount)
    @quantity_sold += amount
    @quantity_in_stock -= amount
  end
end
