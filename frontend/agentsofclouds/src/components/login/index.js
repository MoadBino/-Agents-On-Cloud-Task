import React, { useState } from "react";
import axios from "axios";
import { login } from "../redux/reducer/login/login";
import { useDispatch } from "react-redux";
const Login = () => {
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
    <div>
      {input("password", setPassword)}
      {input("email", setEmail)}
      <button
        onClick={() => {
          Login();
        }}
      >
        Loign
      </button>
    </div>
  );
};
export default Login;
