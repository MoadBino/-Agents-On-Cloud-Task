const express = require("express");
const {login}=require("../controllers/login")
const {register}=require("../controllers/register")
const usersRouter = express.Router();



usersRouter.post("/login",login)
usersRouter.post("/register",register)

module.exports=usersRouter