import "./App.css";
import { Routes, Route } from "react-router-dom";
import Register from "./components/register/index";
import Login from "./components/login";
import Navbar from "./components/navbar";
function App() {
  return (
    <div className="App">
      <Navbar />
      <Routes>
        <Route path="/register" element={<Register />}></Route>
        <Route path="/login" element={<Login />}></Route>
      </Routes>
    </div>
  );
}

export default App;
