const express = require("express");

const app = express();

const PORT = 5000;
const db=require("./models/db")
app.listen(PORT, () => {
  console.log(true);
});
