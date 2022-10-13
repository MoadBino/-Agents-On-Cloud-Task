import React, { useEffect } from "react";
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
import Prodactmodal from "./components/modals/prodact";
import Addprodaict from "./components/addprodacit";
import Favorit from "./components/favorit";
function App() {
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
      {/* <Navbar /> */}
      {/* <Addprodaict/> */}
      <Routes>
        <Route path="/cart" element={<Cart />}></Route>
        <Route path="/myiteams" element={<Myiteams />}></Route>
        <Route path="/home" element={<Home />}></Route>
        <Route path="/register" element={<Register />}></Route>
        <Route path="/login" element={<Login />}></Route>
        <Route path="/Favorit" element={<Favorit />}></Route>
      </Routes>
    </div>
  );
}

export default App;
