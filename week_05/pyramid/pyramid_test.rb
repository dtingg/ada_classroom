require "minitest"
require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "pyramid"

describe "pyramid" do
  it "prints four rows for 7" do
    num = 7
    
    output = build_pyramid(num)
    
    expected_output = 
    "   #\n" +
    "  ###\n" +
    " #####\n" + 
    "#######\n"
    
    expect(output).must_equal expected_output
  end
  
  it "prints three rows for 6" do
    num = 6
    
    output = build_pyramid(num)
    
    expected_output = 
    "  ##\n" +
    " ####\n" + 
    "######\n"
    
    expect(output).must_equal expected_output
  end
end
