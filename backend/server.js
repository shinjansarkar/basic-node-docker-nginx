const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Node backend!');
});

app.listen(port, () => {
  console.log(`Backend running on http://localhost:${port}`);
});
