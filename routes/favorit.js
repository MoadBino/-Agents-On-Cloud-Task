const express = require("express");
const { addTofavorit, getfavorit,deleteFromfavorit } = require("../controllers/favorit");
const favoritRouter = express.Router();

favoritRouter.post("/addtofav/:user_id", addTofavorit);
favoritRouter.get("/getfav/:user_id", getfavorit);
favoritRouter.delete("/deletefav/:id", deleteFromfavorit);
module.exports = favoritRouter;
