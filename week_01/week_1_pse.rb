# Ada - Week 01
# Week 1 PSE: Calculator

# Given this problem prompt:
# Build a calculator command line interface (CLI) that allows any user to interact with the command line to perform simple arithmetic. 
# The program should ask the user to type in and enter in pieces of input. Based on the input that the user typed in, the program should output its evaluation.

# Answer the following prompts:
# 1.	List at least 5 questions whose answers would clarify the problem statement
  # 1.	Which mathematical operations should be included?
  # 2.	What types of data should this program accept as input? Integers? Floats? Strings?
  # 3.	What kind of data-type should the final evaluation be?
  # 4.	What should I do if the user enters invalid input?
  # 5.	What should I do if the user tries to divide by 0?
  # 6.	How should I ask the user which operation they want to perform?

# 2.	List 2 sets of example inputs and their expected output
  # “add”, “4”, “5” => 9
  # “divide”, “9”, “3” => 3

# 3.	Divide the project prompt into at least 2 different sub-problems
  # 1.	How do you ask the user which operation to perform?
  # 2.	How do you add two numbers together?

# 4.	Pick one of those problems from #3 and write a numbered list explaining how to solve that problem without using full lines of code
  # I would prompt the user to select a mathematical operation.
  # I would save their answer as a variable.
  # I would make sure their answer was a valid operator.
  # If not, I would keep asking the user to enter an operator until it was.

# 5.	Write down on paper a solution for your answer in #4 in code

print "Please choose an operation: add, subtract, multiply, divide: "

operation = gets.chomp

operations = ["add", "subtract", "multiply", "divide"]

until operations.include?(operation)
  print "Please enter a valid operation: "
  operation = gets.chomp
end
