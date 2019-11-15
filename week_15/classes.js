// class Zine {
//   constructor(title) {
//     this.title = title;
//   }
// }

// const wizardZine = new Zine("So you want to be a wizard");
// console.log(wizardZine.title)

// const biteSizeZine = new Zine("Bite Site Command Line!");
// console.log(biteSizeZine.title)

// const linuxZine = new Zine("Linux debugging tools you'll love");
// console.log(linuxZine.title)

class Zine {
  constructor(title, contributor) {
    this.title = title;
    this.contributor = contributor;
  }

  toString() {
    return `${this.title} by ${this.contributor}`;
  }
}

const zine = new Zine('So you want to be a wizard', 'Julia Evans');

// console.log(zine.toString());
// So you want to be a wizard by Julia Evans

class Animal {
  constructor(name, sound) {
    this.name = name;
    this.sound = sound;
  }
  speak() {
    return this.sound;
  }
}

let pig = new Animal("porky", "oink")

// console.log(pig.name)
// console.log(pig.sound)
// console.log(pig.speak())

class Baby extends Animal {
  constructor(name, sound, food) {
    super(name, sound);
  
    this.food = food;
  }

  eat() {
    return this.food;
  }
}

let baby = new Baby("Porky", "oink", "slop")

console.log(baby.name)
console.log(baby.speak())
console.log(baby.eat())
