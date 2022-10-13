const express = require("express");
const { addComment ,getComment,deleteComment,updateComment} = require("../controllers/comment");
const commentRouter = express.Router();

commentRouter.post("/addcomment/:id", addComment);
commentRouter.get("/getcomment/:id", getComment);
commentRouter.put("/deletecomment/:id", deleteComment);
commentRouter.put("/updatecomment/:id", updateComment);

module.exports = commentRouter;
