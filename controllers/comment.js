const connection = require("../models/db");

const addComment = (req, res) => {
  const { id } = req.params;
  const { product_id, comment } = req.body;
  const query =
    "INSERT INTO comments (comment,product_id,user_id) VALUES (?,?,?)";
  const data = [comment, product_id, id];
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
  const { id } = req.params;
  const { product_id } = req.body;
  const query =
    "SELECT * FROM comments RIGHT JOIN users ON comments.product_id = users.user_id WHERE comments.product_id=? AND is_deleted=0";
  const data = [product_id];
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
  const query = "UPDATE comments SET is_deleted=1 WHERE comments_id=?";

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

module.exports = { addComment, getComment, deleteComment ,updateComment};
