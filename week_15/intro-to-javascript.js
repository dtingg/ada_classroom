const testVariable = 'Hello World!';
console.log(testVariable);

const babyAnimal = 'kitten';
let animal;

console.log(`What's the adult name for a ${babyAnimal}?`);

if (babyAnimal === 'puppy') {
  animal = 'dog';
} else if (babyAnimal === 'kitten') {
  animal = 'cat';
} else {
  animal = `I have no idea what ${babyAnimal} is!`;
}

console.log(animal);

const list = ['Ada', 'Jacob', 'Babbage', 'Grace'];

for(let index in list) {
  console.log('The value of the element at index right now is:', list[index]);
}

const student = {
  classRoom: 'Leaves',
  cohort: '12',
  name: 'Dianna'
};

for (let key in student) {
  console.log(`Your ${key} is ${student[key]}`);
}
