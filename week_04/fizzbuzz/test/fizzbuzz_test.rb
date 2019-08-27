require_relative "test_helper"

describe "fizzbuzz method" do
  
  it "gives back 'Fizz' for a multiple of 3" do
    result = fizzbuzz(3)
    expect(result).must_equal "Fizz"
  end
  
  it "includes 'Fizz' for all multiples of 3" do
    multiples_of_three = [3, 6, 9, 12, 72, 75]
    
    multiples_of_three.each do |num|
      result = fizzbuzz(num)
      expect(result).must_include "Fizz", "The value of num was #{num}"
    end
  end
  
  it "gives back 'Buzz' for a mutliple of five" do 
    result = fizzbuzz(5)
    expect(result).must_equal "Buzz"
  end
  
  it "gives back 'Buzz' for all mutliples of five" do
    10.times do 
      multiple_of_five = 5 * rand(1_000)
      result = fizzbuzz(multiple_of_five)
      
      expect(result).must_include "Buzz"
    end
  end
  
  it "gives back 'FizzBuzz' for a multiple of 3 and 5" do
    result = fizzbuzz(15)
    
    expect(result).must_equal "FizzBuzz"
  end
  
  it "gives back the number of non-multiples of 3 and 5" do
    non_multiples = [1, 2, 4, 8, 16, 17]
    
    non_multiples.each do |num|
      expect(fizzbuzz(num)).must_equal num, "Num was #{num} when the test failed."
    end
  end
end
