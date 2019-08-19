class ProfessionalYeller
  def initialize(favorite_phrase)
    @phrase = favorite_phrase
    @count = 1
  end
  
  def yell
    scream = @phrase * @count
    @count += 1
    return scream
  end
end
