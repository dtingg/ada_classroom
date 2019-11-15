// const buildIncrementer = () => {
//   let callCount = 0;

//   return () => {
//     callCount += 1;

//     console.log(`The callCount is ${ callCount }`);
//   }
// };

// const incrementer = buildIncrementer();

// incrementer();
// incrementer();
// incrementer();

const buildIncrementer = (name) => {
  let callCount = 0;

  const callCountingFunction = () => {
    callCount += 1;
    console.log(`This is call number ${callCount} for function ${name}`);
  }

  return callCountingFunction;
};

const firstInc = buildIncrementer("first");
const secondInc = buildIncrementer("second");

firstInc();  // This is call number 1 for function first
firstInc();  // This is call number 2 for function first
firstInc();  // This is call number 3 for function first

secondInc(); // This is call number 1 for function second
secondInc(); // This is call number 2 for function second

firstInc();  // This is call number 4 for function first
