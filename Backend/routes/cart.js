const express = require("express");
const {
  addToCart,
  getUserCart,
  deleteFromCart,
  onChange,
} = require("../controllers/cart");
const { authentication } = require("../midlweare/index");
const cartRouter = express.Router();

cartRouter.post("/addToCart", authentication, addToCart);
cartRouter.get("/getcart", authentication, getUserCart);
cartRouter.delete("/deleteCart/:id", authentication, deleteFromCart);
cartRouter.put("/onChange/:id", onChange);
module.exports = cartRouter;
