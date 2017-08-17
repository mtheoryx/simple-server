const express = require('express');

const app = express();

app.get('*', (req, res) => {
  console.log('Got request!')
  res.sendStatus(200)
});

module.exports = app;
