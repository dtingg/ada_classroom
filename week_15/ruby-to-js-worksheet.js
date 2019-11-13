// Ruby to JavaScript Worksheet
// Read the code in each section, then write the equivalent JavaScript code for the Ruby that is given. Start by writing it out in a text editor or on a piece of paper. Then try running it and tweak your code until it successfully runs with expected output.
// Each problem stands alone. Variables from previous problems do not exist.

// Problem Set

// 1. 
// person_age = 55
// ada_age = 2

// if person_age < ada_age
//   print "This person is younger"
// elsif ada_age < person_age
//   print "Ada is younger"
// else
//   print "They’re the same!"
// end

// Ada is younger

const person_age = 55
const ada_age = 2

if (person_age < ada_age) {
  console.log("This person is younger")
} else if (ada_age < person_age) {
  console.log("Ada is younger")
} else {
  console.log("They’re the same!")
}

// 2. 
// x = 7
// y = 7

// if x > y || x == y
//   if x > y
//       print "x is bigger"
//   else
//       print "x = y"
//   end
// else
//   print "y is bigger"
// end

// x = y

const x = 7
const y = 7

if (x > y || x == y){
  if (x > y) {
    console.log("x is bigger")
  } else {
    console.log("x = y")
  }
} else {
  console.log("y is bigger")
}

// 3.
// 10.times do |i|
//   puts i * i
// end

// 0
// 1
// 4
// 9
// 16
// 25
// 36
// 49
// 64
// 81

let i = 0;

while (i < 10) {
  console.log(`${i * i}`);
  i += 1
}

// 4.
// total = 0

// (1..3).each do |i|
//   total = total + i
// end

// puts total

// 6

let total = 0;

let j = 1;

while (j < 4) {
  total += j
  j += 1
}

console.log(total)

// 5.
// i = 0

// while i < 3
//   puts "hi"
//   i = i + 1
// end

// puts "bye"

// hi
// hi
// hi
// bye

i = 0;

while (i < 3) {
  console.log("hi")
  i += 1
}

console.log("bye")

// 6.
// fruits = ["banana", "apple", "kiwi"]
// fruits.each do |fruit|
//   puts "I love #{fruit}!"
// end

// I love banana!
// I love apple!
// I love kiwi!

const fruits = ["banana", "apple", "kiwi"];
fruits.forEach(function(fruit) {
  console.log(`I love ${fruit}!`);
});

// 7.
// total = 0
// values = [4, 6, 2, 8, 11]

// values.each do |value|
//     total = total + value
// end

// puts total

// 31

total = 0
let values = [4, 6, 2, 8, 11]

values.forEach(function(value) {
  total += value;
});

console.log(total)

// 8.
// values = [8, 5, 3, 10, 14, 2]
// values.each do |value|
//   if value == 10
//     puts "Special case!"
//   else
//     puts "Regular values like #{value}"
//   end
// end

// Regular values like 8
// Regular values like 5
// Regular values like 3
// Special case!
// Regular values like 14
// Regular values like 2

values = [8, 5, 3, 10, 14, 2]
values.forEach(function(value) {
  if (value === 10)
    console.log("Special case!") 
  else
    console.log(`Regular values like ${value}`)
});
