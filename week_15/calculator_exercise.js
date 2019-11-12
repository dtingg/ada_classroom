// Exercise: Make Calculator Functions
// Create a script that does the following:

const printInputs = function(a, b) {
  console.log(`The value of a is: ${a}.`)
  console.log(`The value of b is: ${b}.`)
  return null
}

// Create a addNums function that takes in two parameters (a and b are decent variable names here).
// It prints out "The value of a is: ${a}"
// It prints out "The value of b is: ${b}"
// It returns the two parameters added together
const addNums = function(a, b) {
  printInputs(a, b)
  return a + b
}

// Outside of the function, create a const variable named sum and set it to equal the result of addNums(3, 5);
const sum = addNums(3, 5);

// After that, print the variable sum with the line console.log(sum);. Run the script to confirm it runs, and runs as expected.
console.log(sum);

// Create a subtractNums function that takes in two parameters.
// It prints out "The value of a is: ${a}"
// It prints out "The value of b is: ${b}"
// It returns the result of a - b

const subtractNums = function(a, b) {
  printInputs(a, b)
  return a - b
}

// Outside of the function, create a const variable named difference and set it to equal the result of subtractNums(3, 5);
const difference = subtractNums(3, 5);

// After that, print the variable difference with the line console.log(difference);. Run the script to confirm it runs, and runs as expected.
console.log(difference)

// Create a multiplyNums function that takes in two parameters.
// It prints out "The value of a is: ${a}"
// It prints out "The value of b is: ${b}"
// It returns the result of a and b multiplied together
const multiplyNums = function(a, b) {
  printInputs(a, b)
  return a * b
}

// Outside of the function, create a const variable named product and set it to equal the result of multiplyNums(3, 5);
const product = multiplyNums(3, 5)

// After that, print the variable product
console.log(product)

// Run the script to confirm it runs, and runs as expected
// Compare with a neighbor and check you're both in the right direction. Now, refactor:

// Create a printInputs that takes in two parameters. It prints out "The value of a is: ${a}". It prints out "The value of b is: ${b}". It returns null.
// Refactor the addNums, subtractNums, and multiplyNums functions to call printInputs() inside of it.
// Delete any redundant code!
