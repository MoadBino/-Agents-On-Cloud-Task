import React, { useState } from "react";
import "./styel.css";
import { useNavigate} from "react-router-dom";
import axios from "axios";
import { login } from "../redux/reducer/login/login";
import { useDispatch } from "react-redux";
const Login = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const Login = () => {
    axios
      .post("http://localhost:5000/user/login", {
        email,
        password,
      })
      .then((resluit) => {
        dispatch(login(resluit.data.token));
        navigate("/home")
      })
      .catch((err) => {
        console.log(err);
      });
  };

  const input = (placeholder, set) => {
    return (
      <input
        placeholder={placeholder}
        onChange={(e) => {
          set(e.target.value);
        }}
      ></input>
    );
  };
  return (
    <div className="mainlogin">
      <div className="welcoem">
        <div>
          <h1 style={{ color: "red", marginBottom: "3rem" }}>Account Login</h1>
          <h3>Welcome To City Center</h3>
          <h3 id="welcomeletter">
            By creating an account you will be able to shop faster, be up to
            date on an order's status, and keep track of the orders you have
            previously made.
          </h3>
        </div>
      </div>
      <div className="childlogin">
        <div>
          {input("email", setEmail)}
          {input("password", setPassword)}
        </div>
        <button
          onClick={() => {
            Login();
          }}
        >
          Loign
        </button>
      </div>
    </div>
  );
};
export default Login;
