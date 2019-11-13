// JavaScript Worksheet: Functions
// For Part 1, read the code in each section, then write the equivalent JavaScript code for the Ruby that is given. Start by writing it out in a text editor or on a piece of paper. Then try running it and tweak your code until it successfully runs with expected output. For Part 2, follow the directions for each problem.

// Note: For each function you create, you should also write the code to call the function.

// Part 1

// 1.
// def hello
//   puts 'hello!'
// end

const hello = function() {
  console.log("hello!")
}

hello();

// 2. 
// def say_num(number)
//   puts 'Your number is #{number}.'
// end

const sayNum = function(number) {
  console.log(`Your number is ${number}.`)
}

sayNum(5);

// 3.
// def larger_num(first, second)
//   if first >= second
//     first
//   elsif second > first
//     second
//   end
// end

const largerNum = function(first, second) {
  if (first >= second) {
    return first
  } else if (second > first) {
    return second
}}

console.log(largerNum(1, 5));

console.log(largerNum(4, 2));

// 4. 
// def output(items)
//   items.each do |item|
//     puts item
//   end
// end

const output = function(items) {
  items.forEach(function(item) {
    console.log(item);
  }
)};

output(["apple", "banana", "orange"])

// Part 2
// Follow the directions for each problem.

// 1. Invoke the zombies function.
const zombies = function() {
  return "We like to eat people";
};

console.log(zombies());

// 2. 
// What does the following code print to the console?
console.log(function() {
  return "Hey hey hey";
}());

// "Hey hey hey"

// 3. What does the following code print to the console?
const blabbermouth = function() { };
console.log(blabbermouth.name);

// blabbermouth
