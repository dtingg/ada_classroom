// Reserve a Ticket on a Trip package

const axios = require('axios');

const tripId = 220;

const tripReservationData = {
  name: 'Dianna',
  email: 'dianna@adadev.org',
};

axios.post(`https://trektravel.herokuapp.com/trips/${tripID}/reservations`, tripReservationData)
  .then((response) => {
    // console.log('RESPONSE:', response);
    console.log('Trip reserved successfully.');
    console.log('RESPONSE DATA:', response.data);
  })
  .catch((error) => {
    // console.log('ERROR:', error);
    console.log('Error occurred.');
    console.log('ERROR RESPONSE:', error.response);
  });
  