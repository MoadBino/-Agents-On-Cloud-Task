import React, { useEffect, useState } from "react";
import axios from "axios";
const Cart = () => {
  const token = localStorage.getItem("token");
  useEffect(() => {
    axios.get(`http://localhost:5000/cart/getcart`, {
      headers: { Authorization: `Bearer ${token}` },
    });
  }, []);

  return <div>Cart</div>;
};

export default Cart;
