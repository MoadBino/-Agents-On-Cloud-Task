import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
const Register = () => {
  const [name, setName] = useState("");
  const [password, setPassword] = useState("");
  const [email, setEmail] = useState("");
  const navigate = useNavigate();
  const register = () => {
    axios
      .post("http://localhost:5000/user/register", {
        name,
        email,
        password,
      })
      .then((resluit) => {
        console.log(resluit);
        navigate("/login");
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
      {input("username", setName)}
      {input("password", setPassword)}
      {input("email", setEmail)}
      <button
        onClick={() => {
          register();
        }}
      >
        register
      </button>
    </div>
  );
};
export default Register;
