const connection = require("../models/db");
require("dotenv").config();
const bcrypt = require("bcrypt");

const register = async (req, res) => {
  const saltRound = 10
  const { name, email, password } = req.body;
  const hashPassword = await bcrypt.hash(password, saltRound);
  const query = `INSERT INTO users (name,email,password) VALUES (?,?,?)`;
  const data = [name, email, hashPassword, ];
  connection.query(query, data, (err, result) => {
    
    if (err) {
      res.status(500).json({
        success: false,
        message: "email used",
        err,
      });
      return;
    }
    res.status(200).json({
      success: true,
      message: "create account successfully",
      result: result,
    });
  });
};

module.exports = {register};
