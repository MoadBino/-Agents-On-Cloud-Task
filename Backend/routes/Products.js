const express = require("express");
const {
  addProducts,
  getAll,
  ediatProduct,
  getProductById,
  getUserProducts,
  deleteProdacts,
} = require("../controllers/Product");
const { authentication } = require("../midlweare/index");
const ProductsRouter = express.Router();

ProductsRouter.post("/add", authentication, addProducts);
ProductsRouter.get("/getall", getAll);
ProductsRouter.post("/ediatProduct/:id", ediatProduct);
ProductsRouter.get("/byid/:id", getProductById);
ProductsRouter.get("/userPro/",authentication, getUserProducts);
ProductsRouter.delete("/deletePro/:id", deleteProdacts);

module.exports = ProductsRouter;
