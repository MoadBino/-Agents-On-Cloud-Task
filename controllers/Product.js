const connection = require("../models/db");

const addProducts = (req, res) => {
  const { picUrlProd, title, product_name, price, description } = req.body;
  const { user_id } = req.params;
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
    });
  });
};

const getAll = (req, res) => {
  const limit = 10;
  const page = req.params.page;
  const offset = (page - 1) * limit;
  const query = "select * from Products limit " + limit + " OFFSET " + offset;
  connection.query(query, (err, result) => {
    if (err) {
      res.status(500).json({
        success: false,
        mesage: "server error",
        err
      });
      return
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
};
