const express = require("express");

const app = express();
const db = require("./models/db");
app.use(express.json());

const usersRouter = require("./routes/users");
app.use("/user", usersRouter);
const PORT = 5000;
app.listen(PORT, () => {
  console.log(true);
});
