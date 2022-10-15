const connection = require("../models/db");

const addProducts = (req, res) => {
  const { picUrlProd, title, product_name, price, description } = req.body;
  const { user_id } = req.token;
  console.log(user_id);
  const data = [picUrlProd, title, product_name, price, description, user_id];
  const query = `INSERT INTO Products (picUrlProd,title,product_name,price,description,user_id) VALUES (?,?,?,?,?,?)`;
  connection.query(query, data, (err, result) => {
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
      result,
      user_id:user_id
    });
  });
};

const getAll = (req, res) => {
  const query = "select * from Products";
  connection.query(query, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      result,
    });
  });
};

const ediatProduct = (req, res) => {
  const { id } = req.params;
  const query = "SELECT * FROM Products WHERE product_id=?";
  const data = [id];
  connection.query(query, data, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
      return;
    }
    const { picUrlProd, title, product_name, price, description } = req.body;
    const data = [
      picUrlProd || result[0].picUrlProd,
      title || result[0].title,
      product_name || result[0].product_name,
      price || result[0].price,
      description || result[0].description,
      id,
    ];
    const query = `UPDATE Products SET picUrlProd=?, title=?, product_name=?, price=?, description=? WHERE product_id=? `;
    connection.query(query, data, (err, result2) => {
      if (err) {
        res.status(500).json({
          success: false,
          mesage: "server error",
          err,
        });
        return;
      }
      res.status(201).json({
        success: true,
        result2,
      });
    });
  });
};

const getProductById = (req, res) => {
  const { id } = req.params;
  const query = "SELECT * FROM Products WHERE product_id=?";
  const data = [id];
  connection.query(query, data, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      result,
    });
  });
};

const getUserProducts = (req, res) => {
  const { user_id } = req.token;
  const query = "SELECT * FROM Products where user_id=?";
  const data = [user_id];
  connection.query(query, data, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      result,
    });
  });
};

const deleteProdacts = (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM Products WHERE product_id=?";
  const data = [id];
  connection.query(query, data, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err,
      });
      return;
    }
    res.status(201).json({
      success: true,
      result,
    });
  });
};

module.exports = {
  addProducts,
  getAll,
  ediatProduct,
  getProductById,
  getUserProducts,
  deleteProdacts,
};
