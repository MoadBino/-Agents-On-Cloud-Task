const express = require("express");
const { addProducts, getAll } = require("../controllers/Product");
const ProductsRouter = express.Router();

ProductsRouter.post("/add/:user_id", addProducts);
ProductsRouter.get("/getall/:page", getAll);



module.exports = ProductsRouter;
