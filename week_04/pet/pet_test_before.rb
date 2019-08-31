require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'pet'

# describe "Pet" do
#   before do
#     @pet = Pet.new("Fido")
#   end

#   it "must respond to name" do
#     expect(@pet).must_respond_to :name
#   end
# end

describe "Pet" do
  before do
    puts "Creating a pet named Fido"
    @pet = Pet.new("Fido")
  end
  
  describe "initialize method" do
    it "New Pets initialize with a name" do
      expect(@pet).must_respond_to :name
      expect(@pet.name).wont_equal "Ada Lovelace"
    end
    
    it "Throws an ArgumentError if created without a name" do
      expect { Pet.new }.must_raise ArgumentError
    end
  end
end
