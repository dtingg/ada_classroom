const axios = require('axios');

const tripData = {
  name: 'Dianna\'s Trip to Disney World',
  continent: 'North America',
  about: 'A guaranteed seat on every ride.',
  category: 'fun',
  weeks: 1,
  cost: 2000,
};

axios.post('https://trektravel.herokuapp.com/trips', tripData)
  .then((response) => {
    console.log('RESPONSE:', response);
    console.log('RESPONSE DATA:', response.data);
    console.log('plums!');
  })
  .catch((error) => {
    console.log('ERROR:', error);
    console.log('ERROR RESPONSE:', error.response);
    console.log('mangos!');
  })
  .finally(() => {
    console.log('finally done!');
  });
  