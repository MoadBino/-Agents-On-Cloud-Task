const express = require("express");
const cors = require('cors')
const app = express();
const db = require("./models/db");
app.use(express.json());
app.use(cors());
const usersRouter = require("./routes/users");
const ProductsRouter = require("./routes/Products");
const favoritRouter = require("./routes/favorit");
const cartRouter = require("./routes/cart");
const commentRouter = require("./routes/comment");
app.use("/user", usersRouter);
app.use("/Products", ProductsRouter);
app.use("/favorit", favoritRouter);
app.use("/cart", cartRouter);
app.use("/comment", commentRouter);

const PORT = 5000;
app.listen(PORT, () => {
  console.log(true);
});
