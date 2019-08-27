require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/fizzbuzz'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
