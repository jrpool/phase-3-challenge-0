// Function to cast a number to a string.
const stringify = (number) => {return number.toString(10);};

// Function to cast a string to an integer.
const integrify = (string) => {return Number.parseInt(string, 10);};

// Load Express module.
const express = require('express');

// Use it to create an Express application.
const app = express();

// Define its response to a GET request to the URL root.
app.get(
  '/',
  (request, response) => {
    response.send(
      'Thank you for visiting this simple calculator.'
      + '<br><br>'
      + 'To use it, please specify the operation you want in the address bar, '
      + 'as shown in the following examples.'
      + '<br><br>'
      + 'http://127.0.0.1:8000/zero'
      + '<br>'
      + 'http://127.0.0.1:8000/add?a=4&b=8'
      + '<br>'
      + 'http://127.0.0.1:8000/subtract?a=9&b=2'
      + '<br>'
      + 'http://127.0.0.1:8000/double/9'
    );
  }
);

// Define its response to a GET request for zero.
app.get(
  '/zero',
  (request, response) => {response.send('0');}
);

// Define its response to a GET request for an addition.
app.get(
  '/add',
  (request, response) => {
    response.send(stringify(
      (integrify(request.query.a) + integrify(request.query.b))
    ));
  }
);

// Define its response to a GET request for a subtraction.
app.get(
  '/subtract',
  (request, response) => {
    response.send(stringify(
      (integrify(request.query.a) - integrify(request.query.b))
    ));
  }
);

// Define its response to a GET request for a doubling.
app.get(
  '/double/:number',
  (request, response) => {
    response.send(stringify(2 * request.params.number));
  }
);

// Make it listen on port 8000 and confirm to the console.
app.listen(
  8000,
  () => {
    console.log('Running on 8000. Browser access: http://127.0.0.1:8000');
  }
);
