const doMath = function(operation) {
  for (let i = 0; i < 10; i += 1) {
    const result = operation(i);
    console.log(`${i}: ${result}`);
  }
};

doMath(function(num) {
  return num * num;
});


// Cubing one number
doMath(function(num) {
  return num**3;
});

// Formatting the input like it was currency
// Multiplying it by 1 million and then formatting it like currency and then adding text saying that it belongs to the Ada instructors
