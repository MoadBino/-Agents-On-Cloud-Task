import React, { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";
import { getFavoritList } from "./components/redux/reducer/Favorit";
import { useDispatch } from "react-redux";
import { Routes, Route } from "react-router-dom";
import Register from "./components/register/index";
import Login from "./components/login";
import Navbar from "./components/navbar";
import Home from "./components/home";
import Myiteams from "./components/myiteams";
import Cart from "./components/cart";

import Addprodacit from "./components/modals/addprodacit";

import Byid from "./components/prodaictById";
import Favorit from "./components/favorit";
function App() {
  const [open, setOpen] = useState(false);
  const dispatch = useDispatch();
  const token = localStorage.getItem("token");
  useEffect(() => {
    axios
      .get(`http://localhost:5000/favorit/getfav`, {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        dispatch(getFavoritList(resulit.data.result));
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div className="App">
      <Navbar />


      <Routes>
        <Route path="/cart" element={<Cart />}></Route>
        <Route path="/myiteams" element={<Myiteams />}></Route>
        <Route path="/home" element={<Home />}></Route>
        <Route path="/register" element={<Register />}></Route>
        <Route path="/login" element={<Login />}></Route>
        <Route path="/Favorit" element={<Favorit />}></Route>
        <Route path="/byid/:id" element={<Byid />}></Route>
      </Routes>
    </div>
  );
}

export default App;
