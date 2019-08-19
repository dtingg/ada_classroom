class User
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  # Hard code value
  # def name
  #   return "Ada Lovelace"
  # end
  
  # Reader
  def name
    return @name
  end
  
  # Writer
  def name=(new_name)
    @name = new_name
  end
  
  # def email
  #   return "ada@adadev.org"
  # end
  
  def email
    return @email
  end
  
  def email=(new_email)
    @email = new_email
  end
  
  def summary
    return "#{@name}: #{@email}"  
  end  
end
