const connection = require("../models/db");

const addToCart = (req, res) => {
  const { id } = req.params;
  const { product_id, quantity, price_checkout } = req.body;
  const query = `SELECT * FROM cart WHERE product_id=? AND user_id=? `;
  const data = [product_id, id];
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        message: "email used",
        err,
      });
      return;
    }
    if (resulit.length > 0) {
      let thisQuantity = resulit[0].quantity;
      let newQuantity = thisQuantity + 1;
      const data = [newQuantity, product_id, id];
      const query = `UPDATE cart SET quantity=? WHERE product_id=? AND user_id=?`;
      connection.query(query, data, (err, resulit) => {
        if (err) {
          res.status(500).json({
            success: false,
            mesage: "server error,",
            err,
          });
          return;
        }
        res.status(201).json({
          success: true,
          resulit,
        });
      });
    } else {
      const data = [product_id, id, 1, price_checkout];
      const query = `INSERT INTO cart ( product_id, user_id, quantity, price_checkout) VALUES (?,?,?,?) `;
      connection.query(query, data, (err, resulit2) => {
        if (err) {
          res.status(500).json({
            success: false,
            mesage: "server error,",
            err,
          });
          return;
        }
        res.status(201).json({
          success: true,
          resulit2,
        });
      });
    }
  });
};

const getUserCart = (req, res) => {
  const { id } = req.params;
  const query =
    "SELECT * FROM cart INNER JOIN Products ON cart.product_id = Products.product_id WHERE cart.user_id=?";
  const data = [id];
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error,",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      resulit,
    });
  });
};

const deleteFromCart = (req, res) => {
  const { id } = req.params;
  const { product_id } = req.body;
  const query = `SELECT * FROM cart WHERE product_id=? AND user_id=? `;
  const data = [product_id, id];
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
    }
    if (resulit[0].quantity == 1) {
      const query = "DELETE FROM cart WHERE product_id=? AND user_id=?";
      connection.query(query, data, (err, resulit) => {
        if (err) {
          res.status(500).json({
            success: false,
            mesage: "server error,",
            err,
          });
          return;
        }
        res.status(201).json({
          success: true,
          resulit,
        });
      });
    } else {
      const newquantity = resulit[0].quantity - 1;
      const query = `UPDATE cart SET quantity=? WHERE product_id=? AND user_id=?`;
      const data2 = [newquantity, product_id, id];
      connection.query(query, data2, (err, resulit) => {
        if (err) {
          res.status(500).json({
            success: false,
            mesage: "server error,",
            err,
          });
          return;
        }
        res.status(201).json({
          success: true,
          resulit,
        });
      });
    }
  });
};

const onChange = (req, res) => {
  const { id } = req.params;
  const { product_id, quantity } = req.body;
  const data = [quantity, product_id, id];
  const query = "UPDATE cart SET quantity=? WHERE product_id=? AND user_id=? ";
  connection.query(query, data, (err, resulit) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error,",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      resulit,
    });
  });
};

module.exports = { addToCart, getUserCart, deleteFromCart, onChange };
