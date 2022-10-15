const connection = require("../models/db");

const addComment = (req, res) => {

  const { user_id } = req.token;
  const { id } = req.params;
  const { comment } = req.body;
  const query =
    "INSERT INTO comments (comment,product_id,user_id) VALUES (?,?,?)";
  const data = [comment, id, user_id];
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "server error",
        err,
      });
      return;
    }
    res.status(200).json({
      success: true,
      result: resulit,
    });
  });
};

const getComment = (req, res) => {
  const { user_id } = req.token;
  const { id } = req.params;
  const query =
    "SELECT * FROM comments INNER JOIN Products ON comments.product_id =Products.product_id INNER JOIN USERS ON comments.user_id=users.user_id WHERE comments.product_id=? AND comments.user_id=?";
  const data = [id, user_id];
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "server error",
        err,
      });
      return;
    }
    res.status(200).json({
      success: true,
      result: resulit,
    });
  });
};

const deleteComment = (req, res) => {
  const { id } = req.params;
  const data = [id];
  const query = "  DELETE FROM comments WHERE comments_id=?";

  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "server error",
        err,
      });
      return;
    }
    res.status(200).json({
      success: true,
      result: resulit,
    });
  });
};

const updateComment = (req, res) => {
  const { id } = req.params;
  const { comment } = req.body;
  const data = [comment, id];
  const query = "UPDATE comments SET comment=? WHERE comments_id=?";

  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "server error",
        err,
      });
      return;
    }
    res.status(200).json({
      success: true,
      result: resulit,
    });
  });
};

module.exports = { addComment, getComment, deleteComment, updateComment };
