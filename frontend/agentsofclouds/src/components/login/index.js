import React, { useState } from "react";
import axios from "axios";
const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const Login = () => {
    axios
      .post("http://localhost:5000/user/login", {
        email,
        password,
      })
      .then((resluit) => {
        console.log(resluit);
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
