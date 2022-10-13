import "./App.css";
import { Routes, Route } from "react-router-dom";
import Register from "./components/register/index";
import Login from "./components/login";
import Navbar from "./components/navbar";
import Home from "./components/home";
import Myiteams from "./components/myiteams";
import Prodactmodal from "./components/modals/prodact";
import Addprodaict from "./components/addprodacit";
function App() {
  return (
    <div className="App">
      {/* <Navbar /> */}
      {/* <Addprodaict/> */}
      <Routes>
        <Route path="/myiteams" element={<Myiteams />}></Route>
        <Route path="/home" element={<Home />}></Route>
        <Route path="/register" element={<Register />}></Route>
        <Route path="/login" element={<Login />}></Route>
      </Routes>
    </div>
  );
}

export default App;
