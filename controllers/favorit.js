const connection = require("../models/db");

const addTofavorit = (req, res) => {
  const { user_id } = req.params;
  const { product_id } = req.body;
  const query = "INSERT INTO favorite_list (product_id,user_id) VALUES (?,?)";
  const data = [product_id, user_id];
  connection.query(query, data, (err, result) => {
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
      result: result,
    });
  });
};

const getfavorit = (req, res) => {
  const { user_id } = req.params;
  const query = `SELECT * FROM favorite_list INNER JOIN Products ON favorite_list.product_id =Products.product_id  WHERE favorite_list.user_id=? `;

  const data = [user_id];
  connection.query(query, data, (err, result) => {
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
      result: result,
    });
  });
};

const deleteFromfavorit = (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM favorite_list WHERE favorite_list=?";
  const data = [id];
  connection.query(query, data, (err, result) => {
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
      result: result,
    });
  });
};

module.exports = { addTofavorit, getfavorit, deleteFromfavorit };
