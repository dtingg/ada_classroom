const axios = require('axios');

axios.get('https://dog.ceo/api/breeds/image/random/')
  .then((response) => {
    // Code that executes with a successful response goes here
    console.log('Success!');
  })
  .catch((error) => {
    // Code that executes with an unsuccessful response goes here
    console.log('Failure!');
  });
