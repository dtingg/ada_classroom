class Celsius
  def initialize(temperature)
    @temperature = temperature
  end
  
  def to_fahrenheit
    return ( @temperature * 1.8 ) + 32
  end
end
