const express = require("express");

const app = express();
const db = require("./models/db");
app.use(express.json());

const usersRouter = require("./routes/users");
const ProductsRouter = require("./routes/Products");
app.use("/user", usersRouter);
app.use("/Products", ProductsRouter);
const PORT = 5000;
app.listen(PORT, () => {
  console.log(true);
});
