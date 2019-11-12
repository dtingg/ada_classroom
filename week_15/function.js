const bark = function() {
  console.log('Woof!');
};

bark();

const ribbit = function() {
  console.log('Ribbit!');
};

ribbit();

const oink = function() {
  console.log('Oink!');
};

oink();

const quack = function() {
  return ('Quack!');
};

for (let i = 0; i < 5; i += 1) {
  console.log(quack());
}
