const express = require("express");
const { addToCart ,getUserCart,deleteFromCart,onChange} = require("../controllers/cart");
const cartRouter = express.Router();

cartRouter.post("/addToCart/:id", addToCart);
cartRouter.get("/getcart/:id", getUserCart);
cartRouter.delete("/deleteCart/:id", deleteFromCart);
cartRouter.put("/onChange/:id", onChange);
module.exports = cartRouter;
