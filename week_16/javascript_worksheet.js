const createCakeLabel = (ingredients) => {
  return `Delicious ${ingredients[0]} Cake 🍰. Ingredients: ${ingredients}`;
}

const groceries = ['strawberries', 'sugar', 'eggs', 'flour', 'cream'];

console.log(createCakeLabel(groceries));

const sayHi = () => {
  return 'hi';
}

// const sayLoudGreeting = () => {
//   console.log( sayHi().toUpperCase() );
// }

// console.log(sayLoudGreeting());

// const sayHi = () => {
//   return 'hi';
// }

const sayLoudGreeting = (callGreeting) => {
  console.log( callGreeting().toUpperCase() );
}

sayLoudGreeting( sayHi );

// Reduce this function to a minimal arrow function:
// const divisibleByThree = function(num) {
//   return num % 3 === 0;
// };

const divisibleByThree = (num) => num % 3 === 0;

console.log(divisibleByThree(9))

// Convert the Ruby sample code into JavaScript
// def coffee_price is_iced, size, flavor_array
//   price = 2.50

//   if size == 0
//   elsif size == 1
//     price += 1
//   else
//     price *= 2
//   end

//   if is_iced
//     price += 0.75
//   end

//   flavor_array.each do |flavor|
//     puts "pumping #{flavor}"
//     price += 0.50
//   end

//   price
// end

// puts coffee_price true, 3, ["vanilla", "lemon"]

const coffeePrice = function(isIced, size, flavorArray) {
  let price = 2.50;

  if (size === 0){
    // comment
  } else if (size === 1){
    price += 1;
  } else {
    price *= 2
  }

  if (isIced) {
    price += 0.75;
  }

  flavorArray.forEach (function(flavor) {
    console.log(`pumping ${flavor}`)
    price += 0.50;
  });

  return price;
}

console.log(coffeePrice(true, 3, ["vanilla", "lemon"]))
