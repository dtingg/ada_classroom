// const axios = require('axios');

// console.log("first");

// axios.get('https://dog.ceo/api/breeds/image/random/')
//   .then((response) => {
//     // Code that executes with a successful response goes here
//     console.log('Success!');
//   })
//   .catch((error) => {
//     // Code that executes with an unsuccessful response goes here
//     console.log('Failure!');
//   })

//   .finally(() => {
//     console.log("this happened")
//   });

// const axios = require('axios');

// const printSuccess = () => {console.log('success!')};
// const printError = () => {console.log('error!')};

// axios.get('https://dog.ceo/api/breeds/image/random/')
//   .then(printSuccess)
//   .catch(printError);

// const axios = require('axios');

// axios.get('https://dog.ceo/api/breeds/image/random/')
//   .then((response) => {
//     console.log('The value of response is:', response);

//     console.log('The value of status inside of response is:', response.status);

//     console.log('The date inside header inside response is:', response.headers.date);

//     console.log('The data given back by the API response is:', response.data);
//   })
//   .catch((error) => {
//     console.log('The value of error is:', error);
//     console.log('The value of status inside of response is:', error.response.status);

//     console.log('The data given back by the API response is:', error.response.data);
//   });

// const axios = require('axios');

// axios.get('http://api.open-notify.org/iss-pass.json', {
//     params: {
//       lat: 47.6062,
//       lon: 122.3321,
//     }
//   })
//   .then((response) => {
//     console.log(response.data);

//     console.log(response)

//   })
//   .catch((error) => {
//     console.log('error!');
//   });

// const axios = require('axios');

// axios.get('http://api.open-notify.org/iss-pass.json', {
//   params: {
//     lat: 47.6062,
//     lon: 122.3321,
//   }
// })
// .then((response) => {
//   response.data.response.forEach((passes) => {
//     const risetime = passes.risetime;
//     const date = new Date(risetime * 1000);
//     console.log(date.toString());
//   });    
// })
// .catch((error) => {
//   console.log('error!');
// });

const axios = require('axios');

console.log()
axios.get('http://api.open-notify.org/iss-pass.json', {
    params: {
      lat: 47.6062,
      lon: 122.3321,
    }
  })
  .then((response) => {
    response.data.response.forEach((passes) => {
      const risetime = passes.risetime;
      const date = new Date(risetime * 1000);
      console.log(date.toString());
    });    
  })
  .catch((error) => {
    console.log('error!');
  });

console.log('I broke free on a Saturday morning');
console.log('I put the pedal to the floor');
console.log('Headed north on Mills Avenue');
console.log('And listened to the engine roar');
