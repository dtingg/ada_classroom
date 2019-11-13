'use strict';

const addNums = function(a, b) {
  return a + b
}

const subtractNums = function(a, b) {
  return a - b
}

const multiplyNums = function(a, b) {
  return a * b
}

const divideNums = function(a, b) {
  return a / b
}

const moduloNums = function(a, b) {
  return a % b
}

const exponifyNums = function(a, b) {
  return a ** b
}

const calculator = function(error, result) {
  let num1 = parseInt(result.num1)
  let num2 = parseInt(result.num2)
  let operation = result.operation
  let answer;

  switch(operation) {
    case '+':
    case "add":
      answer = addNums(num1, num2);
      break;
    case "-":
    case "subtract":
      answer = subtractNums(num1, num2);
      break;
    case "*":
    case "multiply":
      answer = multiplyNums(num1, num2);
      break;
    case "/":
    case "divide":
      answer = divideNums(num1, num2);
      break;
    case "%":
    case "modulo":
      answer = moduloNums(num1, num2);
      break;
    case "^":
    case "exponify":
      answer = exponifyNums(num1, num2);
      break;
    default:
      answer = `I don't know what ${operation} means.`;
      break;
  }

  console.log(`${num1} ${operation} ${num2} = ${answer}`);
} 

const prompt = require('prompt');

//start the prompt
prompt.start();

//collect two numbers (num1 and num2) and an operation
//then call the function `calculator` with the results
prompt.get(['num1','num2','operation'], calculator);

// Gracefully handle unexpected user input:
// What happens if the user input is empty (i.e., the user just pressed enter)?
// What happens if the user tries to add hotdog to elephant?
