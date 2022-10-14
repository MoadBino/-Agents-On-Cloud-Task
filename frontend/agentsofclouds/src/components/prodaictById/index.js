import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";
const Byid = () => {
  const [prodaict, setProdaict] = useState("");
  const { id } = useParams();
  console.log(id);
  useEffect(() => {
    axios
      .get(`http://localhost:5000/Products/byid/${id}`)
      .then((resulit) => {
        console.log(resulit.data.result);
        setProdaict(resulit.data.result);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return <div>Byid</div>;
};

export default Byid;
