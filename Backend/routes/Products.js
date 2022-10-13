const express = require("express");
const { addProducts, getAll ,ediatProduct,getProductById,getUserProducts,deleteProdacts} = require("../controllers/Product");
const ProductsRouter = express.Router();

ProductsRouter.post("/add/:user_id", addProducts);
ProductsRouter.get("/getall/:page", getAll);
ProductsRouter.post("/ediatProduct/:id", ediatProduct);
ProductsRouter.get("/byid/:id", getProductById);
ProductsRouter.get("/userPro/:id", getUserProducts);
ProductsRouter.delete("/deletePro/:id", deleteProdacts);

module.exports = ProductsRouter;
