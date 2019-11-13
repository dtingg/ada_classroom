// Exercise: forEach
// Complete the following exercises in JavaScript using forEach and anonymous functions.

// Given the array [ 2, 5, 8, 11, 14 ], iterate through the array. For each item num, print to the terminal 2 * num + 7
const list = [2, 5, 8, 11, 14];

list.forEach( function(num) {
  let result = 2 * num + 7
  console.log(result)
});

// Given the array ['puppies', 'meerkats', 'red pandas'], iterate through the array. For each item critter, print to the terminal "I am as amazing as" critter!
const animals = ['puppies', 'meerkats', 'red pandas'];

animals.forEach( function(animal) {
  console.log(`I am as amazing as ${animal}!`)
});

// Given the array ['puppies', 'meerkats', 'red pandas'], iterate through the array. Print out only the longest string in the array.
let longestName = ""

animals.forEach( function(critter) {
  if (critter.length > longestName.length) {
  longestName = critter;
  }
});

console.log(`The longest animal name is: ${longestName}`)
