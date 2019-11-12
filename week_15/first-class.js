const task = {
  name: 'practice iteration in JavaScript',
  dueDate: 'end of the week',
  owner: 'dee',
  isComplete: false,
  markComplete() {
    console.log('Wow...');
    console.log(`The task "${this.name}" is complete!`);
    console.log('Congratulations! You won!');
    this.isComplete = true;
    return true;
  },
  describe(){
    console.log(`The task name is ${task.name}`)
    console.log(`The task owner is ${task.owner}`)
    return true;
  }
}

console.log(task.isComplete);
task.markComplete();
console.log(task.isComplete);
task.describe();
