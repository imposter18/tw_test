const express = require('express');
const main = express();
require('dotenv').config();
const port = 8000;

main.get('/', (req, res) => {
    res.send(`Hello, World! ${process.env.TITLE}`);
});

main.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
