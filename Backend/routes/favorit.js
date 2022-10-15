const express = require("express");
const {
  addTofavorit,
  getfavorit,
  deleteFromfavorit,
} = require("../controllers/favorit");
const { authentication } = require("../midlweare/index");
const favoritRouter = express.Router();

favoritRouter.post("/addtofav/:id", authentication, addTofavorit);
favoritRouter.get("/getfav/", authentication, getfavorit);
favoritRouter.delete("/deletefav/:id", authentication, deleteFromfavorit);
module.exports = favoritRouter;
