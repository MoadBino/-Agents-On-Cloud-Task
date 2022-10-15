const express = require("express");
const {
  addComment,
  getComment,
  deleteComment,
  updateComment,
} = require("../controllers/comment");
const { authentication } = require("../midlweare/index");

const commentRouter = express.Router();

commentRouter.post("/addcomment/:id", authentication, addComment);
commentRouter.get("/getcomment/:id", authentication, getComment);
commentRouter.delete("/deletecomment/:id", authentication, deleteComment);
commentRouter.put("/updatecomment/:id", authentication, updateComment);

module.exports = commentRouter;
