require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'pet'

# describe "Pet" do
#   let (:pet)  { Pet.new("Fido") }

#   it "has a name" do
#     expect(pet.name).must_equal "Fido"
#   end
# end

describe "Pet" do
  let (:pet) {
    puts "Creating a pet named Fido"
    Pet.new("Fido")
  }
  
  let (:bad_dog) {
    puts "Make a bad dog"
    Pet.new("Bad Dog")
  }
  
  describe "initialize method" do
    it "New Pets initialize with a name" do
      expect(pet).must_respond_to :name
      expect(pet.name).must_equal "Fido"
      pet.name = "Ada Lovelace"
    end
    
    it "Throws an ArgumentError if created without a name" do
      expect {
        Pet.new
      }.must_raise ArgumentError
    end
    
    it "New Pets initialize with a name" do
      expect(pet).must_respond_to :name
      expect(pet.name).must_equal "Fido"
      pet.name = "Ada Lovelace"
    end
    
    it "has a bad name if we give it one" do
      expect(bad_dog.name).must_equal "Bad Dog"
    end    
  end
end
