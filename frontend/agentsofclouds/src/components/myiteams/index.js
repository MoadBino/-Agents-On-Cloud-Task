import React, { useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
const Myiteams = () => {
  const navigate = useNavigate();
  const token = localStorage.getItem("token") || "";
  useEffect(() => {
    if (!token) {
      navigate("/login");
    }
    axios
      .get("http://localhost:5000/Products/userPro", {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        console.log(resulit);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return <div>Myiteams</div>;
};

export default Myiteams;
